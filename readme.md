# Windows Scripts

## Basic command Cheat Sheets

**Linux to Windows CMD**
| Unix/Linux Command | Windows CMD Command                                                     | Description with Example                                                                                                                                                                                                                                                                                 |
|--------------------|-------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ls                 | dir                                                                     | Lists all files and directories in the current directory. Example: dir                                                                                                                                                                                                                                   |
| cd                 | cd                                                                      | Changes the current directory. Example: cd C:\Windows                                                                                                                                                                                                                                                    |
| cp                 | copy                                                                    | Copies a file. Example: copy source.txt destination.txt                                                                                                                                                                                                                                                  |
| mkdir              | mkdir                                                                   | Creates a new directory. Example: mkdir new_directory                                                                                                                                                                                                                                                    |
| grep               | findstr                                                                 | Searches for patterns in files. Example: findstr "example" file.txt                                                                                                                                                                                                                                      |
| find               | dir /s                                                                  | Searches for a file or a directory. Example: dir /s *example.txt*                                                                                                                                                                                                                                        |
| touch              | copy nul                                                                | Creates a new empty file. Example: copy nul example.txt                                                                                                                                                                                                                                                  |
| echo               | echo                                                                    | Displays a line of text. Example: echo Hello, world!                                                                                                                                                                                                                                                     |
| rm                 | del                                                                     | Deletes a file. Example: del example.txt                                                                                                                                                                                                                                                                 |
| mv                 | move                                                                    | Moves a file to a new location or renames a file. Example: move old.txt new.txt                                                                                                                                                                                                                          |
| wget/curl          | certutil -urlcache -split -f / bitsadmin / PowerShell Invoke-WebRequest | Downloads files from the internet. Example: certutil -urlcache -split -f "http://example.com/file.txt" output.txt or bitsadmin /transfer myDownloadJob /download /priority normal http://example.com/file.txt C:\temp\file.txt or Invoke-WebRequest -Uri http://example.com/file.txt -OutFile output.txt |


**RED TEAM ENUMERATION**

| Command    | Description with Example                                                                                                                                                                      |
|------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ipconfig   | Display the IP configuration for all network interfaces. Example: ipconfig /all                                                                                                               |
| net        | A suite of commands for network settings and shares. Example: net user to list users.                                                                                                         |
| netstat    | Network statistics. Example: netstat -ano to display active TCP connections and process PID.                                                                                                  |
| nslookup   | Query the DNS server for domain name or IP address mapping. Example: nslookup example.com                                                                                                     |
| whoami     | Display the username and domain of the current user. Example: whoami                                                                                                                          |
| systeminfo | Display detailed configuration information about a computer and its operating system. Example: systeminfo                                                                                     |
| schtasks   | Schedule tasks to run periodically or at a specific time. Example: schtasks /create /tn TaskName /tr TaskRun /sc daily                                                                        |
| wmic       | Windows Management Instrumentation Command-line. Example: wmic process list brief lists details about all processes.                                                                          |
| gpresult   | Display the Resultant Set of Policy (RSoP) information for a remote user and computer. Example: gpresult /r                                                                                   |
| powershell | Starts a new PowerShell session. Example: powershell -exec bypass to start PowerShell with script execution policy bypassed.                                                                  |
| sc         | Service Control - manage Windows services. Example: sc query to display the status of services.                                                                                               |
| tasklist   | Lists all running tasks/processes. Example: tasklist                                                                                                                                          |
| taskkill   | Kill a running task/process. Example: taskkill /PID pid_number                                                                                                                                |
| reg        | Registry command that allows you to read from and write to the registry. Example: reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run to check all the programs that run at startup. |
| icacls     | Display or modify Access Control Lists (ACLs) for files and directories. Example: icacls C:\path\to\folder to display the ACLs.                                                               |
| netsh      | Network command to view or modify network configurations. Example: netsh wlan show profile to show saved WiFi profiles.                                                                       |


**PowerShell**

| Unix/Linux Command | PowerShell Command           | Description with Example                                                                                           |
|--------------------|------------------------------|--------------------------------------------------------------------------------------------------------------------|
| ls                 | Get-ChildItem                | Lists all files and directories in the current directory. Example: Get-ChildItem                                   |
| cd                 | Set-Location                 | Changes the current directory. Example: Set-Location C:\Windows                                                    |
| cp                 | Copy-Item                    | Copies a file. Example: Copy-Item source.txt destination.txt                                                       |
| mkdir              | New-Item -ItemType Directory | Creates a new directory. Example: New-Item -ItemType Directory -Path new_directory                                 |
| grep               | Select-String                | Searches for patterns in files. Example: `Get-Content file.txt                                                     |
| find               | Get-ChildItem -Recurse       | Searches for a file or a directory. Example: Get-ChildItem -Path C:\ -Recurse -Filter example.txt                  |
| touch              | New-Item -ItemType File      | Creates a new empty file. Example: New-Item -ItemType File -Name example.txt                                       |
| echo               | Write-Output                 | Displays a line of text. Example: Write-Output "Hello, world!"                                                     |
| rm                 | Remove-Item                  | Deletes a file. Example: Remove-Item example.txt                                                                   |
| mv                 | Move-Item                    | Moves a file to a new location or renames a file. Example: Move-Item old.txt new.txt                               |
| wget/curl          | Invoke-WebRequest            | Downloads files from the internet. Example: Invoke-WebRequest -Uri http://example.com/file.txt -OutFile output.txt |



## Package Managers

winget install neofetch
```txt
Windows Package Manager v1.5.2201
Copyright (c) Microsoft Corporation. All rights reserved.

The winget command line utility enables installing applications and other packages from the command line.

usage: winget  [<command>] [<options>]

The following commands are available:
  install    Installs the given package
  show       Shows information about a package
  source     Manage sources of packages
  search     Find and show basic info of packages
  list       Display installed packages
  upgrade    Shows and performs available upgrades
  uninstall  Uninstalls the given package
  hash       Helper to hash installer files
  validate   Validates a manifest file
  settings   Open settings or set administrator settings
  features   Shows the status of experimental features
  export     Exports a list of the installed packages
  import     Installs all the packages in a file
  pin        Manage package pins

For more details on a specific command, pass it the help argument. [-?]

The following options are available:
  -v,--version              Display the version of the tool
  --info                    Display general info of the tool
  -?,--help                 Shows help about the selected command
  --wait                    Prompts the user to press any key before exiting
  --logs,--open-logs        Open the default logs location
  --verbose,--verbose-logs  Enables verbose logging for winget
  --disable-interactivity   Disable interactive prompts

More help can be found at: https://aka.ms/winget-command-help
```


