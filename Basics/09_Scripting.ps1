function testfunktion()
{ Write-Host "Hello Word!"} 

testfunktion 

function testfunktion($text)
{ Write-Host "Hello Word! $text"} 

testfunktion("Beispieltext") 

function testfunktion([int]$zahl)
{ Write-Host "Hello Word! $zahl"} 

testfunktion(2)

function testfunktion([int]$zahl)
{ return $zahl*2 } 
testfunktion(2)

Function DoStuff(){
    param(
        [Parameter(Mandatory=$true)][string]$computername,
        [Parameter(Mandatory=$false)][string]$arg2,
        [Parameter(Mandatory=$false)][string]$domain
    )
    if(!($domain)){
        $domain = 'domain1'
    }
    write-host $domain
    if($arg2){
        write-host "arg2 present... executing script block"
    }
    else{
        write-host "arg2 missing... exiting or whatever"
    }
}

DoStuff -computername "Test" -arg2 "" -domain "Domain2"