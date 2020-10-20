
#Build 
Import-Module SampleCmdlets.dll  
Get-Command -Module SampleCmdlets 

$path =(Get-Location).Path;

New-ModuleManifest -Path "$path/SampleCmdlets.psd1" -ModuleVersion "2.0" -Author "PetKir"

#cp SampleCmdlets.dll

Test-ModuleManifest SampleCmdlets.psd1

#Import-Module .\SampleCmdlets.psd1

mkdir /Users/pkirschner/.local/share/powershell/Modules/SampleCmdlets
cp SampleCmdlets.psd1 /Users/pkirschner/.local/share/powershell/Modules/SampleCmdlets/.
cp SampleCmdlets.dll /Users/pkirschner/.local/share/powershell/Modules/SampleCmdlets/.

Import-Module SampleCmdlets -Force

Get-Command -Module SampleCmdlets


Custom Objects
Execute  Ps in C# Core
Custom Modules
Custom Binary Cmdlets


try{
    [Calc]::Divide(8,0)
    Write-Host "Hugo"
}catch {
    Write-Host "X"
}



