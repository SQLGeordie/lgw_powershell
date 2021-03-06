function Get-FormatFile { 
    param(
    [Switch]$OnlyFromModule,    
    [Switch]$OnlyBuiltIn,
    [Switch]$FromSnapins
    ) 
    
    process {
        if (-not $OnlyBuiltIn) {
            Get-Module | 
                Select-Object -ExpandProperty ExportedFormatFiles |
                Get-Item
        }
        
        if (-not $OnlyFromModule -and 
            -not $FromSnapins) {
            Get-ChildItem $psHome -Filter *.format.ps1xml
        } elseif ($FromSnapins) {
            Get-PSSnapin |
                Where-Object { $_.Formats } |
                ForEach-Object { 
                    foreach ($f in $_.Formats) {
                        Get-Item "$($_.ApplicationBase)\$f"
                    }    
                }            
        
        }
    }
}