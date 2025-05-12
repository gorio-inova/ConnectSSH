. ".\show-menu.ps1"
function Connect-SSH {
    param (
        [string]$inventario
    )
    $servers = Import-Csv "$inventario" -Delimiter ","
    $server = Show-Menu($servers)
    if ($server.key) {
        ssh.exe -i $server.key "$($server.user)@$($server.host)"
    }
    else{
        Write-Host "uwu"
    }
}
