Class CustomObject{
    [string] $Name;
    CustomObject([string] $NameIn) {
        $this.Name = $NameIn;
    }
 
    [string] JumbleName() {
        $a = $null
        [char[]]$this.Name| Sort-Object {Get-Random} | %{ $a = $PSItem + $a}
        return $a
    }
}
 
$x = [CustomObject]::new("aStringValue")
$x.JumbleName()