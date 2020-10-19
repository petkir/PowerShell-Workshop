#windows
Invoke-Command –ComputerName yara.cubido.linz –ScriptBlock { Get-ItemProperty -Path 'HKCU:\Software\System' -Name WorkingDirectory}

Enter-PSSession yara.cubido.linz -Credential cubido\p.kirschner

$s = new-pssession -computername yara.cubido.linz

import-pssession -session $s
