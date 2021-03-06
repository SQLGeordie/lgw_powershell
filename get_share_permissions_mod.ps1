###########################################################################
#
# NAME: 
#
# AUTHOR:  lwapnits
#
# COMMENT: 
#
# VERSION HISTORY:
# 1.0 1/30/2013 - Initial release
#
# Adapted from original Get-SharePermissions script by BigTeddy
###########################################################################

[cmdletbinding() ]

param([Parameter(ValueFromPipeline=$true,
	ValueFromPipelineByPropertyName=$true)]$Computer='.')
	
$shares = gwmi -Class Win32_Share -ComputerName $Computer | select -ExpandProperty Name

$title = "Shares on {0}" -f $Computer
write-output ('=' * 50 )
write-output $title
write-output $('-' * $title.Length)


foreach ($share in $shares) {
	$acl = $null
	Write-output `n $share
	write-output $('#' * $share.Length)
	
	$objShareSec = Get-WmiObject -Class Win32_LogicalShareSecuritySetting -Filter "name='$share'" -ComputerName $Computer
	try {
		$SD = $objShareSec.GetSecurityDescriptor().Descriptor
		
		write-output "`nShare Rights"
		write-output "------------"

		foreach ($ace in $SD.DACL) {
			$UserName = $ace.Trustee.Name
			switch ($ace.AccessMask)
			{
				2032127 {$Perm = "Full Control"}
				1245631 {$Perm = "Change"}
				1179817 {$Perm = "Read" }
			}
			if ($ace.Trustee.Domain -ne $null) { $UserName = "$($ace.Trustee.Domain)\$UserName" }
			if ($ace.Trustee.Name -eq $null) { $UserName = $ace.Trustee.SIDString }
			
			Write-output "$Username - $Perm"
			
			[Array]$acl += New-Object Security.AccessControl.FileSystemAccessRule($UserName, $ace.AccessMask, $ace.AceType)
		} # end foreach ACE
		$obtain = $true
	} # end try
	catch
		{ 
			Write-output "Unable to obtain permissions for $share" 
			$obtain = $false
		}
	
	if ($obtain)
	{
		write-output "`nNTFS Rights"
		write-output "-----------"
		
		foreach ($a in $acl) {
			write-output $a
			
			if ($a.IdentityReference -match [regex]"(?i)^(?:phlynt|corp)\\.*") {
				try {
					Get-QADGroupMember ([string]$a.identityreference) | Select-Object samaccountname,name,type  | Format-Table
				}
				catch {
					Get-QADUser ([string]$a.identityreference) | Select-Object samaccountname,Name,type | Format-Table
				}
			}
			else
			{
				if ($Computer -match [regex]"(?i)([a-zA-Z0-9\-]+)(?:\.[a-z\.]+[\/]?)*") { $Computer = $Matches[1] }
				$re = "(?i)(?:{0}|BUILTIN)\\(.*)" -f $Computer
				
				$localGroup = [string]$a.IdentityReference -match [regex]$re 
				
				if ($localGroup)
				{
					$lc = [ADSI]"WinNT://$Computer,computer"
					$localrights = $lc.psbase.children | where {($_.psbase.schemaClassName -eq 'group') -and ($_.name -match $Matches[1])} | foreach {
						$lg = [ADSI]$_.psbase.Path
						$lg.psbase.invoke("Members") | ForEach-Object {
							$member = $_.gettype().invokemember("name", 'getproperty', $null, $_, $null)
							$user = Get-QADUser $member
							New-Object -TypeName PSObject -Property @{
								sAMAccountName = $user.samaccountname
								type = $user.type
								fullname = $user.name
							}
						} | where { $user.samaccountname -ne $null } | Format-Table
					}
					Write-Output $localrights
				}
			}
			"-"
		}
	}
} # end foreach $share