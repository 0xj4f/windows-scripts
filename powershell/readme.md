# PowerShell Scripts

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
