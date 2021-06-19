#Contratop PowerToys, ContratopDev All Rights Reserved

#Get PowerToys Version
$cttpowertoy_ver = 0.1

#Set PowerToys Status OK
$cttpowertoy_status = "OK"
$cttpowertoy_stacol = "Green"
$host.ui.RawUI.WindowTitle = "PowerShell Command Center (Contratop PowerToys Loaded)"

#PowerToys Help
function Ctt-PowerToys-Help {
  Write-Host "Contratop Powertoys $cttpowertoy_ver Help"
  Write-Host "Ctt-PowerToys-Help : Show this page"
  Write-Host "Ctt-PowerToys-Version : Print CTT PowerToys Version"
  }


#PowerToys Toys