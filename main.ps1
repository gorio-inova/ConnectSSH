. ".\variables.ps1"
. ".\show-menu.ps1"

$servers = Import-Csv "$inventario" -Delimiter ","
$server = Show-Menu($servers)
write-host $server