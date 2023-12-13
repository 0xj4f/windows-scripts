# PowerShell Scripts

Install Chocolatey
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

```pwsh
# MAKE SURE TO RUN THIS AS ADMINISTRATOR

# ALLOW All Scripts
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
# Allow local scripts and remote signed scripts
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser


# Allow only signed scripts
# Set-ExecutionPolicy AllSigned -Scope CurrentUser
# For Security Purposes
```

## SetTimeZone Task

Make sure to have Administrator Privilege
```pwsh
$Action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File C:\tools\SetTimeZone.ps1"
$Trigger = New-ScheduledTaskTrigger -AtStartup
$Principal = New-ScheduledTaskPrincipal -UserId "SYSTEM" -LogonType ServiceAccount
$Settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -DontStopOnIdleEnd -StartWhenAvailable
$Task = New-ScheduledTask -Action $Action -Principal $Principal -Trigger $Trigger -Settings $Settings
Register-ScheduledTask -TaskName "SetTimeZone" -InputObject $Task

```

## FIREWALLS

```ps1
New-NetFirewallRule -Name AllowPort8888 -DisplayName "Allow Incoming Connections on Port 8888" -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 8888
```

```cmd
netsh advfirewall firewall add rule name="AllowPort8888" dir=in action=allow protocol=TCP localport=8888
```


## References 
- https://learn.microsoft.com/en-us/powershell/scripting/developer/cmdlet/approved-verbs-for-windows-powershell-commands?view=powershell-7.4&viewFallbackFrom=powershell-7
