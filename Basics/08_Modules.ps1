#
Import-Module ServerManager

Add-WindowsFeature RSAT-AD-PowerShell

if ($PSVersionTable.PSEdition -eq 'Desktop' -and (Get-Module -Name AzureRM -ListAvailable)) { Write-Warning -Message ('Az module not installed. Having both the AzureRM and ' + 'Az modules installed at the same time is not supported.') } else { Install-Module -Name Az -AllowClobber -Scope CurrentUser }
Install-Module -Name Az -AllowClobber -Scope CurrentUser


Get-Module -ListAvailable Az*

Connect-AzAccount

# proxy
$webClient = New-Object System.Net.WebClient 
$webClient.Proxy.Credentials = [System.Net.CredentialCache]::DefaultNetworkCredentials
