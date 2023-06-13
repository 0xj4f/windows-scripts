param(
    [string]$PythonVersion = "3.11.0"
)

# MAKE SURE TO HAVE THE RIGHT PRIVILEGE

# Define the filename and URL based on the version
$PythonInstallerName = "python-$PythonVersion-amd64.exe"
$PythonUrl = "https://www.python.org/ftp/python/$PythonVersion/$PythonInstallerName"

# Download the Python installer
Write-Host "Downloading Python $PythonVersion..."
Invoke-WebRequest -Uri $PythonUrl -OutFile $PythonInstallerName

# Run the installer
Write-Host "Installing Python $PythonVersion..."
Start-Process -FilePath ".\$PythonInstallerName" -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1" -Wait

# Check Python installation
$InstalledVersion = python --version

if ($InstalledVersion -like "Python $PythonVersion*") {
    Write-Host "Python $PythonVersion installed successfully!"
} else {
    Write-Host "Python installation failed. Please check manually."
}
