# Offensive Windows

## PowerShell
- https://github.com/samratashok/nishang
- https://www.sans.org/blog/offensive-powershell-metasploit-meterpreter/
- https://www.pluralsight.com/paths/powershell-for-cyber-offense


## CAPTURE THE FLAG SCRIPTS
cmd
```bat
@echo off
echo Searching for the flag...

:: Explore the File System
cd %USERPROFILE%
dir /s *flag*.*

:: Search for Files
findstr /si flag %USERPROFILE%\*.txt

:: Check Registry
reg query HKLM /s /f flag
reg query HKCU /s /f flag

:: Network Enumeration
ipconfig /all
arp -a

:: Check Running Processes
tasklist

:: Pause to review the results
pause
```
ps1
```ps1
Write-Host "Searching for the flag..."

# Explore the File System
cd $env:USERPROFILE
Get-ChildItem -Recurse -Filter *flag*.*

# Search for Files
Get-ChildItem -Recurse -Filter *flag*.* | Select-String "flag"

# Check Registry
Get-Item -LiteralPath "HKLM:\" -Recurse | Where-Object { $_.Name -match "flag" }
Get-Item -LiteralPath "HKCU:\" -Recurse | Where-Object { $_.Name -match "flag" }

# Network Enumeration
ipconfig /all
arp -a

# Check Running Processes
Get-Process

# Pause to review the results
Read-Host "Press Enter to exit..."
```
