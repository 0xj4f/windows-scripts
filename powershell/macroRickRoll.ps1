# PowerShell Script to Open Google Chrome and Navigate to a YouTube Link

# Check if Google Chrome is installed
$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$chromePath86 = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

# YouTube link
$youTubeLink = "https://www.youtube.com/watch?v=dQw4w9WgXcQ"

# Function to open Chrome and navigate to YouTube
Function Open-YoutubeInChrome ($path) {
    Start-Process $path $youTubeLink
}

# Check if Chrome is installed and open YouTube
if (Test-Path $chromePath) {
    Open-YoutubeInChrome $chromePath
} elseif (Test-Path $chromePath86) {
    Open-YoutubeInChrome $chromePath86
} else {
    Write-Host "Google Chrome is not found on this system."
}
