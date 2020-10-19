New-Module -Script {
    function SayHello {"Hello!"}; 
Set-Alias Hi SayHello; 
Export-ModuleMember -Alias Hi -Function SayHello
}

#Hi