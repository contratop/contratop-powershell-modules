# Contratop Essentials
# By ContratopDev
# All Rights Reserved
function Essentials-About {Write-Host "Acerca de:"
                               Write-Host "Modulo       : Contratop Essentials"
                               Write-Host "Desarrollador: ContratopDev"
                               Write-Host "Organizacion : New Molecule Global"
                               Write-Host "             : Contratop Studios"
                               Write-Host "Notas        : uwu owo ewe awa iwi"
                               Write-Host "Version      : 1.10"}

# Variables
$MyDesktop = "$home\Desktop"

# Help Page for Essentials
function Essentials-Help {clear
                           Write-Host "Mostrando ayuda para el modulo Contratop Essentials"
                           Write-Host ""
                           Write-Host "Los comandos fueron abreviados a Ess- en la version 1.10"
                           Write-Host ""
                           Write-Host "Essentials-Help            : Muestra esta ayuda"
                           Write-Host "Essentials-About           : Muestra detalles de este modulo"
                           Write-Host "Ess-Update                 : Actualiza el modulo Contratop Essentials via internet"
                           Write-Host "Ess-Store                  : Muestra los modulos disponible para descargar de Contratop Store"
                           Write-Host ""
                           Write-Host "Ess-Forecast               : Devuelve el tiempo actual y el tiempo de 3 dias en ASCII"
                           Write-Host "Ess-Forecast-minus         : Una version reducida de Essentials-Forecast"
                           Write-Host "Edit-Profile               : Edita tu perfil privado de PowerShell con Notepad++"
                           Write-Host "Get-IPv4Address            : ALERTA: Devuelve tu IPv4 Publica" -ForegroundColor Yellow
                           Write-Host "Get-FreeGames              : Genera un archivo CSV de los juegos de PC actualmente gratis y Giveaways"
                           Write-Host ""
                           Write-Host "Iss-Package                : Descarga un archivo especifico de la red via PowerShell"
                           }




# Applets
function Visit-Molecule-Web {start https://moleculecentral.github.io/centralweb}

function Ess-Forecast-minus {(curl wttr.in/badajoz?n  -UserAgent "curl" ).Content}

function Ess-Forecast {(curl http://wttr.in/badajoz -UserAgent "curl" ).Content}

function Edit-Profile {notepad++ $profile}

function Get-IPv4Address {Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Select-Object IPAddress}
   
function Ess-RestartExplorer {Write-Host "Reinciiando el Windows Explorer. Espere un momentin plis" -ForegroundColor Yellow
                                        taskkill /f /im explorer.exe
                                        sleep 1
                                        explorer.exe
                                        clear
                                     Write-Host ""
                                     Write-Host "El Windows Explorer se ha reiniciado correctamente" -ForegroundColor Green}

Function Iss-Package {$essvar_url = Read-Host "Introducta la URL de descarga"
                      sleep 1
                      $essvar_file = Read-Host "Introduzca como se llamará el archivo (Incluyendo su extension)"
                      sleep 1
                      wget $essvar_url -OutFile $HOME\Documents\$essvar_file
                      sleep 1
                      Write-Host "El archivo se ha descargado en el directorio Mis Documentos" -ForegroundColor Green}

function Get-FreeGames {$data = Invoke-RestMethod https://www.gamerpower.com/api/giveaways?platform=pc; $data | Select-Object title,worth,open_giveaway,platforms,type | Export-Csv $HOME\Desktop\Lista_Juegos.csv -force -notypeinformation; echo "la lista de juegos gratis de la semana se ha explortado correctamente en el Escritorio"}


#Download More Modules
function Ess-Store {Write-Host "Contratop PowerShell Store"
                           Write-Host ""
                           Write-Host "Green: PowerShell Modules"
                           Write-Host "Cyan : Console Application"
                           Write-Host ""
                           Write-Host "1- PowerToys - ContratopDev" -ForegroundColor Green
                           Write-Host "2- patata - pokeinalover" -ForegroundColor Green
                           Write-Host "3- Chocolatey - Chocolatey" -ForegroundColor Cyan
                           Write-Host ""
                           Write-Host "Use Ess-Install-ModuleName to perform install"}
#StoreItems
function Ess-Install-PowerToys {mkdir "C:\Program Files\WindowsPowerShell\Modules\Powertoys"
                                     wget https://raw.githubusercontent.com/contratop/contratop-powershell-modules/main/Powertoys.psm1 -OutFile 'C:\Program Files\WindowsPowerShell\Modules\Powertoys\Powertoys.psm1'
                                     Write-Host "el modulo PowerToys se ha descargado" -ForegroundColor Green   }

function Ess_Install-Chocolatey {Write-Host "Descargando e Instalando Chocolatey..." -ForegroundColor Yellow
                                        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
                                        Write-Host "La operacion se ha completado" -ForegroundColor Green}

function Ess-Install-patata {mkdir "C:\Program Files\WindowsPowerShell\Modules\patata"
                                    wget https://raw.githubusercontent.com/contratop/contratop-powershell-modules/main/patata.psm1 -OutFile 'C:\Program Files\WindowsPowerShell\Modules\patata\patata.psm1'
                                    Write-Host "El modulo patata se ha descargado" -ForegroundColor Green}


#AutoUpdater Essentials
function Ess-Update {wget https://raw.githubusercontent.com/contratop/contratop-powershell-modules/main/Essentials.psm1 -OutFile 'C:\Program Files\WindowsPowerShell\Modules\Essentials\Essentials.psm1'
                              Write-Host "El paquete de comandos PowerShell Essentials de ContratopDev ha finalizado su actualizacion" -ForegroundColor Green
                              Write-Host ""
                              Write-Host "Reinicia la PowerShell para que los cambios se apliquen correctamente" -ForegroundColor Yellow
                              Write-Host "Nota: Si durante el proceso, PowerShell ha mostrado errores (Texto Rojo), Es posible que la actualizacion haya fallado" -ForegroundColor Yellow}

#Export Module
Export-ModuleMember -Function * -Variable *