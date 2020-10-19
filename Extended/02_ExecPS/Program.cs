using System;
using System.Management.Automation;
using System.Linq;

namespace _02_ExecPS
{
    class Program
    {
        static void Main(string[] args)
        {
            var script = "Get-Process | select -Property @{N='Name';E={$_.Name}},@{N='CPU';E={$_.CPU}}";


            var powerShell = PowerShell.Create().AddScript(script);

            foreach (dynamic item in powerShell.Invoke().ToList())
            {
                if (item.CPU > 10)
                {
                    Console.WriteLine("The process greater than 10 CPU counts is : " + item.Name);
                }

            }

            Console.Read();
        }
    }
}
