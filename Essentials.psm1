# PowerShell Essentials
# By ContratopDev
# All Rights Reserved

# Variables
$MyDesktop = "$home\Desktop"


# Applets
function Visit-Molecule-Web {start https://moleculecentral.github.io/centralweb}

function Essentials-Forecast-minus {(curl wttr.in/badajoz?n  -UserAgent "curl" ).Content}

function Essentials-Forecast {(curl http://wttr.in/badajoz -UserAgent "curl" ).Content}

function Edit-Profile {notepad++ $profile}

function Get-IPv4Address {Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Select-Object IPAddress}
        

function Get-FreeGames {$data = Invoke-RestMethod https://www.gamerpower.com/api/giveaways?platform=pc; $data | Select-Object title,worth,open_giveaway,platforms,type | Export-Csv $HOME\Desktop\Lista_Juegos.csv -force -notypeinformation; echo "la lista de juegos gratis de la semana se ha explortado correctamente en el Escritorio"}


#Download More Modules

#AutoUpdater Essentials
function Essentials-Update {wget https://raw.githubusercontent.com/contratop/contratop-powershell-modules/main/PowerShell_Essentials.psm1 -OutFile 'C:\Program Files\WindowsPowerShell\Modules\Essentials\Essentials.psm1'
                              Write-Host "El paquete de comandos PowerShell Essentials de ContratopDev ha finalizado su actualizacion" -ForegroundColor Green
                              Write-Host ""
                              Write-Host "Reinicia la PowerShell para que los cambios se apliquen correctamente" -ForegroundColor Yellow
                              Write-Host "Nota: Si durante el proceso, PowerShell ha mostrado errores (Texto Rojo), Es posible que la actualizacion haya fallado" -ForegroundColor Yellow}

#Export Module
Export-ModuleMember -Function * -Variable *