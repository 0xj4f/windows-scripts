# WSL Windows Subsystem Linux
enable wsl system
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
reboot
```
wsl --set-default-version 2
```

access windows from linux
```
cd /mnt/c/Users/<yourname>
```


## References:
- https://www.sitepoint.com/wsl2/#:~:text=You%20can%20access%20WSL2%20Linux,or%20any%20file%20open%20dialog.&text=Here%2C%20is%20the,the%20distro%20in%20Windows%20Terminal.
