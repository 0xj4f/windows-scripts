@echo off

:: Create CTF Report Folder
mkdir C:\Windows\Temp\ctf-report

:: Set Output Paths
set cmd_report_path=C:\Windows\Temp\ctf-report\cmd-report.txt

:: Redirect Output to the Report
echo Searching for the flag... > %cmd_report_path%

:: Explore the File System
cd %USERPROFILE%
dir /s *flag*.* >> %cmd_report_path%

:: Search for Files
findstr /si flag %USERPROFILE%\*.txt >> %cmd_report_path%

:: Check Registry
reg query HKLM /s /f flag >> %cmd_report_path%
reg query HKCU /s /f flag >> %cmd_report_path%

:: Network Enumeration
ipconfig /all >> %cmd_report_path%
arp -a >> %cmd_report_path%

:: Check Running Processes
tasklist >> %cmd_report_path%

:: Display Report Path
echo Report generated at: %cmd_report_path%

:: Pause to review the results
pause
