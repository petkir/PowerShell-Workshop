$env:PSModulePath.Split(":")

mkdir /Users/pkirschner/.local/share/powershell/Modules/CustomModule
cp CustomModule.psm1 /Users/pkirschner/.local/share/powershell/Modules/CustomModule/.

Import-Module -Name CustomModule #-force

Get-Module -ListAvailable Custom*  



Get-Command -Module CustomModule 