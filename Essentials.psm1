# Contratop Essentials
# By ContratopDev
# All Rights Reserved
function Essentials-About {Write-Host "Acerca de:"
                               Write-Host "Modulo       : Contratop Essentials"
                               Write-Host "Desarrollador: ContratopDev"
                               Write-Host "Organizacion : New Molecule Global"
                               Write-Host "             : Contratop Studios"
                               Write-Host "Notas        : uwu owo ewe awa iwi"}

# Variables
$MyDesktop = "$home\Desktop"

# Help Page for Essentials
function Essentials-Help {clear
                           Write-Host "Mostrando ayuda para el modulo Contratop Essentials"
                           Write-Host ""
                           Write-Host "Essentials-Help            : Muestra esta ayuda"
                           Write-Host "Essentials-About           : Muestra detalles de este modulo"
                           Write-Host "Essentials-Update          : Actualiza el modulo Contratop Essentials via internet"
                           Write-Host "Essentials-Store           : Muestra los modulos disponible para descargar de Contratop Store"
                           Write-Host ""
                           Write-Host "Essentials-Forecast        : Devuelve el tiempo actual y el tiempo de 3 dias en ASCII"
                           Write-Host "Essentials-Forecast-minus  : Una version reducida de Essentials-Forecast"
                           Write-Host "Edit-Profile               : Edita tu perfil privado de PowerShell con Notepad++"
                           Write-Host "Get-IPv4Address            : ALERTA: Devuelve tu IPv4 Publica" -ForegroundColor Yellow
                           Write-Host "Get-FreeGames              : Genera un archivo CSV de los juegos de PC actualmente gratis y Giveaways"
                           }




# Applets
function Visit-Molecule-Web {start https://moleculecentral.github.io/centralweb}

function Essentials-Forecast-minus {(curl wttr.in/badajoz?n  -UserAgent "curl" ).Content}

function Essentials-Forecast {(curl http://wttr.in/badajoz -UserAgent "curl" ).Content}

function Edit-Profile {notepad++ $profile}

function Get-IPv4Address {Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Select-Object IPAddress}
   
function Essentials-RestartExplorer {Write-Host "Reinciiando el Windows Explorer. Espere un momentin plis" -ForegroundColor Yellow
                                        taskkill /f /im explorer.exe
                                        sleep 1
                                        explorer.exe
                                        clear
                                     Write-Host ""
                                     Write-Host "El Windows Explorer se ha reiniciado correctamente" -ForegroundColor Green}

function Get-FreeGames {$data = Invoke-RestMethod https://www.gamerpower.com/api/giveaways?platform=pc; $data | Select-Object title,worth,open_giveaway,platforms,type | Export-Csv $HOME\Desktop\Lista_Juegos.csv -force -notypeinformation; echo "la lista de juegos gratis de la semana se ha explortado correctamente en el Escritorio"}


#Download More Modules
function Essentials-Store {Write-Host "Contratop PowerShell Store"
                           Write-Host ""
                           Write-Host "1- PowerToys - ContratopDev" -ForegroundColor Green
                           Write-Host "2- patata - pokeinalover" -ForegroundColor Green
                           Write-Host "3- Chocolatey - Chocolatey" -ForegroundColor Cyan
                           Write-Host ""
                           Write-Host "Use Essentials-Install-ModuleName to perform install"}
#StoreItems
function Essentials-Install-PowerToys {mkdir "C:\Program Files\WindowsPowerShell\Modules\Powertoys"
                                     wget https://raw.githubusercontent.com/contratop/contratop-powershell-modules/main/Powertoys.psm1 -OutFile 'C:\Program Files\WindowsPowerShell\Modules\Powertoys\Powertoys.psm1'
                                     Write-Host "el modulo PowerToys se ha descargado" -ForegroundColor Green   }

function Essentials_Install-Chocolatey {Write-Host "Descargando e Instalando Chocolatey..." -ForegroundColor Yellow
                                        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
                                        Write-Host "La operacion se ha completado" -ForegroundColor Green}

function Essentials-Install-patata {mkdir "C:\Program Files\WindowsPowerShell\Modules\patata"
                                    wget https://raw.githubusercontent.com/contratop/contratop-powershell-modules/main/patata.psm1 -OutFile 'C:\Program Files\WindowsPowerShell\Modules\patata\patata.psm1'
                                    Write-Host "El modulo patata se ha descargado" -ForegroundColor Green}


#AutoUpdater Essentials
function Essentials-Update {wget https://raw.githubusercontent.com/contratop/contratop-powershell-modules/main/Essentials.psm1 -OutFile 'C:\Program Files\WindowsPowerShell\Modules\Essentials\Essentials.psm1'
                              Write-Host "El paquete de comandos PowerShell Essentials de ContratopDev ha finalizado su actualizacion" -ForegroundColor Green
                              Write-Host ""
                              Write-Host "Reinicia la PowerShell para que los cambios se apliquen correctamente" -ForegroundColor Yellow
                              Write-Host "Nota: Si durante el proceso, PowerShell ha mostrado errores (Texto Rojo), Es posible que la actualizacion haya fallado" -ForegroundColor Yellow}

#Export Module
Export-ModuleMember -Function * -Variable *