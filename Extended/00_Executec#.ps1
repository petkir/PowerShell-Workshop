$MyCode = @"
public class Calc
{
    public int Add(int a,int b)
    {
        return a+b;
    }
    
    public int Mul(int a,int b)
    {
        return a*b;
    }
    public static float Divide(int a,int b)
    {
        return a/b;
    }
}
"@
Add-Type $MyCode

$obj = New-Object Calc
$obj.Add(4,5)
[Calc]::Divide(8,2)