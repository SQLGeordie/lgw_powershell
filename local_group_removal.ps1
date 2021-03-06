function validPath($path)
{
	return !(test-Path -Path $path -PathType leaf)
}

function AclAce
{
	param (
		[string]$identity,
		[system.Security.AccessControl.FileSystemAccessRule]$access,
		[string]$folder
	)

	$propagation = [system.security.accesscontrol.PropagationFlags]"InheritOnly"
	

	$permission = $identity,
				  $access.FileSystemRights,
				  $access.InheritanceFlags,
				  $propagation,
				  $access.AccessControlType
	
	
	
	$ACE = New-Object System.Security.AccessControl.FileSystemAccessRule $permission
	$ACL = Get-Acl -Path $folder
	
	return $ACE, $ACL, $permission
}



function RemGroup
{
	Param (
		[Parameter(Mandatory=$true)]
			[ValidateScript({validPath($_)})]
			[string] $RootPath,
		[Parameter(Mandatory=$true)]
			[ValidateScript({
			$_ -match [regex]"^[a-zA-Z0-9\-]*\\[a-zA-Z0-9\-]*$"
			})]
			[string] $LocalGroup,
		[Parameter(Mandatory=$false)]
			[string] $IncludeRegex = ".*"
	)

	Get-ChildItem $RootPath | foreach { 
	if (($_.name -match [regex]$IncludeRegex) -and (validpath $_))
		{
			$path = $_.fullname
			
			$access = (Get-Acl  $path).Access
			foreach ($a in $access) 
			{
				if ($a.IdentityReference -match [regex]("(?i)" + $LocalGroup -replace ("\\","\\")))
				{ 
					$objACE, $objACL, $permission = aclace $a.IdentityReference $a $path
					$objACL.SetAccessRuleProtection($true, $false)
					$path
					
					$objACL.RemoveAccessRule($objACE)
					Set-Acl -Path $path -AclObject $objACL
				}
			}
		}
	}
}