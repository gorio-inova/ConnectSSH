. ".\variables.ps1"

$servers = Import-Csv "$inventario" -Delimiter ","
$servers | ForEach-Object {
    Write-Host "$($_.dn)"
}