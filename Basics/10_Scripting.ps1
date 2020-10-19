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