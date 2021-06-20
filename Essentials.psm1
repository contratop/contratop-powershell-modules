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
        

function Get-FreeGames {$data = Invoke-RestMethod https://www.gamerpower.com/api/giveaways?platform=pc; $data | Select-Object title,worth,open_giveaway,platforms,type | Export-Csv $HOME\Desktop\Lista_Juegos.csv -force -notypeinformation; echo "la lista de juegos gratis de la semana se ha explortado correctamente en el Escritorio"}


#Download More Modules
function Essentials_Store {Write-Host "Contratop PowerShell Store"
                           Write-Host ""
                           Write-Host "No hay modulos disponibles de momento" -ForegroundColor Yellow}
#StoreItems



#AutoUpdater Essentials
function Essentials-Update {wget https://raw.githubusercontent.com/contratop/contratop-powershell-modules/main/PowerShell_Essentials.psm1 -OutFile 'C:\Program Files\WindowsPowerShell\Modules\Essentials\Essentials.psm1'
                              Write-Host "El paquete de comandos PowerShell Essentials de ContratopDev ha finalizado su actualizacion" -ForegroundColor Green
                              Write-Host ""
                              Write-Host "Reinicia la PowerShell para que los cambios se apliquen correctamente" -ForegroundColor Yellow
                              Write-Host "Nota: Si durante el proceso, PowerShell ha mostrado errores (Texto Rojo), Es posible que la actualizacion haya fallado" -ForegroundColor Yellow}

#Export Module
Export-ModuleMember -Function * -Variable *