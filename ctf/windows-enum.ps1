# Define the report directory, using the Windows Temp folder as the base
$windowsTemp = [System.IO.Path]::GetTempPath()
$report_directory = Join-Path -Path $windowsTemp -ChildPath "enum_report"

# Create the report directory if it doesn't exist
if (-not (Test-Path -Path $report_directory)) {
    New-Item -ItemType Directory -Path $report_directory | Out-Null
}

# Get hostname
$hostname = $env:COMPUTERNAME

# Define the report file name
$date = Get-Date -Format "yyyy-MM-dd"
$report_file = Join-Path -Path $report_directory -ChildPath "$($hostname)-$date.txt"

# Start collecting information
"Enumerating Users and Groups..." | Out-File -FilePath $report_file
Get-LocalUser | Out-File -FilePath $report_file -Append

"Enumerating Local Groups..." | Out-File -FilePath $report_file -Append
Get-LocalGroup | Out-File -FilePath $report_file -Append

"Enumerating Hostname..." | Out-File -FilePath $report_file -Append
$hostname | Out-File -FilePath $report_file -Append

"Enumerating Routing Tables..." | Out-File -FilePath $report_file -Append
Get-NetRoute | Out-File -FilePath $report_file -Append

"Enumerating Network Shares..." | Out-File -FilePath $report_file -Append
Get-SmbShare | Out-File -FilePath $report_file -Append

"Enumerating Network Services..." | Out-File -FilePath $report_file -Append
Get-Service | Where-Object {$_.Status -eq "Running"} | Out-File -FilePath $report_file -Append

# Additional enumeration commands can be added here following the same pattern

# Note: Some commands may require elevated privileges to execute successfully.

