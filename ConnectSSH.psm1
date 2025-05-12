. "$PSScriptRoot\show-menu.ps1"
function Connect-SSH {
    [CmdletBinding()]
    param (
        [PSDefaultValue(Help = ".\inventario.csv")]
        [string]$inventario = ".\inventario.csv" 
    )

    $servers = Import-Csv -Path $Inventario -Delimiter "," 
    $server = Show-Menu -servers $servers

    if ($server) {
        $sshCommand = if ($server.key) {
            "ssh.exe -i `"$($server.key)`" $($server.user)@$($server.host)"
        } else {
            "ssh.exe $($server.user)@$($server.host)"
        }

        Write-Host "Conectando a $($server.dn)"
        Invoke-Expression $sshCommand
    }
}