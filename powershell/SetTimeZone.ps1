# PowerShell Script to Set Time Zone
param(
    [string]$TimeZoneID = "Singapore Standard Time"
)

# Set the Time Zone
Set-TimeZone -Id $TimeZoneID

# Output the current time zone
Get-TimeZone
