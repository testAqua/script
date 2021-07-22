Param
(
    [Parameter(Mandatory)]
    [string] $Source,
    [Parameter(Mandatory)]
    [string] $Destination,
    [Parameter(Mandatory)]
    [string] $Text
)

if (!(Test-Path $Source)) {
    Write-Error "Source location doesn't exists"
}

if (!(Test-Path $Destination)) {
    Write-Error "Destination location doesn't exists"
}

$sourceFiles = Get-ChildItem -Path $Source -Recurse
if (!$sourceFiles) {
    Write-Output "No files, sry"
}
else {
    foreach ($file in $sourceFiles) {
        if ((Get-Content $file) -match $Text) {
            Write-Output "file $file is suitable by condition"
            Copy-Item -Path $file -Destination $Destination -Force -Confirm:$false
        }
    }
}