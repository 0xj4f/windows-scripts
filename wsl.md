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

## Timezone Not Synced

To synchronize the WSL 2 clock with the host system after a time zone change, you need to shut down all WSL 2 sessions and then restart. This can be done using the `wsl --shutdown` command.

Here's how you can do that:

1. Open a Windows CMD or PowerShell as Administrator.

2. Type the following command to shut down all WSL instances:

   ```bash
   wsl --shutdown
   ```

3. Then, restart your WSL Ubuntu instance normally. You can do this by just typing `wsl` or `ubuntu` (or the name of your specific WSL distribution if it's different) in the command line.

4. Check the date and time again in your WSL Ubuntu terminal using:

   ```bash
   date
   ```

Now your date and time should be synchronized with the new timezone you've set.

If the time is still not correct, there may be a problem with the underlying Windows system time. You can try synchronizing your Windows host system with an internet time server:

1. Go to Windows Settings -> Time & Language -> Date & time.
2. Turn on the switch under "Set time automatically".
3. Click on "Sync now" under "Synchronize your clock".

After synchronizing your Windows clock with the internet time, repeat the `wsl --shutdown` command, and then start your WSL instance again.


## References:
- https://www.sitepoint.com/wsl2/#:~:text=You%20can%20access%20WSL2%20Linux,or%20any%20file%20open%20dialog.&text=Here%2C%20is%20the,the%20distro%20in%20Windows%20Terminal.
