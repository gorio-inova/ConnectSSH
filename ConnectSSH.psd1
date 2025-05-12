New-ModuleManifest -Path .\SSHSelector.psd1 `
    -RootModule 'ConnectSSH.psm1' `
    -Author 'Guillermo Orio' `
    -Description 'Selector SSH gráfico en PowerShell' `
    -FunctionsToExport 'Connect-SSH'
