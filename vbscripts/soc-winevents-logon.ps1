get all Logon Windows Event
Get-WinEvent -FilterHashtable @{LogName='Security'; ID=4624}
