# powershell ConnectSSH

Script para seleccionar conexiones ssh de un inventario

## Instalación

### 1. Clona el repo en tu carpeta de Módulos o en la global
>[!TIP]
>Si lo quieres para tu usuario únicamente, debes instalarlo en `%HOMEDRIVE%%HOMEPATH%\Documents\WindowsPowerShell\Modules`. Si lo quieres de forma global debes instalarlo en `%ProgramFiles%\WindowsPowerShell\Modules`. [Fuente](https://learn.microsoft.com/en-us/powershell/scripting/developer/module/installing-a-powershell-module?view=powershell-7.5)

### 2. Importa el módulo de powershell
Utiliza el siguiente comando:
`Import-Module Connect-SSH`
>[!IMPORTANT]
>Debes configurar tu [ExecutionPolicy](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.5) para poder utilizar el módulo
## Uso

### 1. Genera tu inventario
Debes generar un inventario en csv siguiendo el siguiente esquema:
|             dn             	|       host      	|         user         	|         key         	|
|:--------------------------:	|:---------------:	|:--------------------:	|:-------------------:	|
| nombre que quieras mostrar 	| ip o nombre dns 	| usuario para iniciar 	| ruta a la clave-ssh 	|

### 2. Utiliza el CMDlet

Simplemente usa `Connect-SSH` y selecciona la máquina