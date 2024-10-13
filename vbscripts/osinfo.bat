@ECHO OFF
TITLE System Information Batch File
ECHO This batch file will show Windows 10 Operating System information

systeminfo | findstr /C:"Host Name"
systeminfo | findstr /C:"OS Name"
systeminfo | findstr /C:"OS Version"
systeminfo | findstr /C:"System Type"
systeminfo | findstr /C:"Registered Owner"
systeminfo | findstr /C:"Original Install Date"
systeminfo | findstr /C:"System Boot Time"
systeminfo | findstr /C:"Boot Device"
PAUSE

@REM NOTES: THIS IS VERY SLOW
@REM WE NEED TO FIND A WAY TO OPTIMIZE THIS
