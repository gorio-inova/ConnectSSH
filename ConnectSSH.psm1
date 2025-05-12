. "$PSScriptRoot\show-menu.ps1"
function Connect-SSH {
    [CmdletBinding()]
    param (
        [PSDefaultValue(Help = "HOME\Documents\inventario.csv")]
        [string]$inventario = "$($HOME)\Documents\inventario.csv" 
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