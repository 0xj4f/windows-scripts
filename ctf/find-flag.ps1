# Create CTF Report Folder
New-Item -ItemType Directory -Path "$env:TEMP\ctf-report" -Force | Out-Null

# Set Output Paths
$ps1_report_path = "$env:TEMP\ctf-report\ps1-report.txt"

# Redirect Output to the Report
"Searching for the flag..." | Out-File -FilePath $ps1_report_path

# Explore the File System
Set-Location $env:USERPROFILE
Get-ChildItem -Recurse -Filter *flag*.* | Out-File -Append -FilePath $ps1_report_path

# Search for Files
Get-ChildItem -Recurse -Filter *flag*.* | Select-String "flag" | Out-File -Append -FilePath $ps1_report_path

# Check Registry
Get-Item -LiteralPath "HKLM:\" -Recurse | Where-Object { $_.Name -match "flag" } | Out-File -Append -FilePath $ps1_report_path
Get-Item -LiteralPath "HKCU:\" -Recurse | Where-Object { $_.Name -match "flag" } | Out-File -Append -FilePath $ps1_report_path

# Network Enumeration
ipconfig /all | Out-File -Append -FilePath $ps1_report_path
arp -a | Out-File -Append -FilePath $ps1_report_path

# Check Running Processes
Get-Process | Out-File -Append -FilePath $ps1_report_path

# Display Report Path
Write-Host "Report generated at: $ps1_report_path"

# Pause to review the results
Read-Host "Press Enter to exit..."
