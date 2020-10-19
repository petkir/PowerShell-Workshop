Get-Help New-Item
Get-Help New-Item -Online                                 
New-Item -Path 'D:\temp\Test Folder' -ItemType Directory



Copy-Item 'D:\temp\Test Folder' 'D:\temp\Test Folder1'


Remove-Item 'D:\temp\Test Folder1'

Move-Item D:\temp\Test D:\temp\Test1

Rename-Item D:\temp\Test D:\temp\Test1

Test-Path D:\temp\test

Get-Content D:\temp\Test\test.txt

Set-Content D:\temp\test\test.txt 'Welcome to my Sample'

Get-Date





New-Item -Path HKCU:\Software\hsg1 -Value “default value”
set-location -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\
Get-childitem
Where $_variable
