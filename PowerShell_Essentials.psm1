function Visit-Molecule-Web {start https://moleculecentral.github.io/centralweb}

function Get-Forecast-minus {(curl wttr.in/badajoz?n  -UserAgent "curl" ).Content}

function Get-Forecast {(curl http://wttr.in/badajoz -UserAgent "curl" ).Content}

function Edit-Profile {notepad++ $profile}

function Get-IPv4Address {Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Select-Object IPAddress}
        

function Get-FreeGames {$data = Invoke-RestMethod https://www.gamerpower.com/api/giveaways?platform=pc; $data | Select-Object title,worth,open_giveaway,platforms,type | Export-Csv $HOME\Desktop\Lista_Juegos.csv -force -notypeinformation; echo "la lista de juegos gratis de la semana se ha explortado correctamente en el Escritorio"}


# Lista de descargadores de paquetes extras
function Get-ContratopPowerToys {wget https://raw.githubusercontent.com/contratop/contratop-powertoys/main/contratop_powertoys.ps1 -OutFile $home\Documents\WindowsPowerShell\contratop_powertoys.ps1}
