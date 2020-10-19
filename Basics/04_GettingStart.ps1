#Special Variables
#https://www.tutorialspoint.com/powershell/powershell_special_variables.htm


Get-Item *.*
Get-Item *.* |Where-Object { $_.Name.IndexOf(".ps1") -gt -1 } 


Get-Item *.* | Where { $_.Name.IndexOf(".ps1") -gt -1 } |Sort-Object Length -DESC


Get-Item *.* | Where { $_.Name.IndexOf(".ps1") -gt -1 } |Sort-Object Length | Select Name

$count = (Get-Item *.* | Where { $_.Name.IndexOf(".ps1") -gt -1 } ).Length 



