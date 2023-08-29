# Enable-RDP.ps1

# Enable Remote Desktop
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -Name "fDenyTSConnections" -Value 0

# Allow RDP through Windows Firewall
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

# Confirm RDP is enabled
$rdpStatus = Get-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -Name "fDenyTSConnections"

if ($rdpStatus.fDenyTSConnections -eq 0) {
    Write-Host "Remote Desktop is now enabled."
} else {
    Write-Host "Failed to enable Remote Desktop."
}
