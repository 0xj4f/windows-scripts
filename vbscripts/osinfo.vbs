' cscript osinfo.vbs
' Script to retrieve and display operating system information, including BootDevice, SystemDrive, and NumberOfUsers

On Error Resume Next

' Connect to the WMI service
Set objWMIService = GetObject("winmgmts:\\.\root\CIMV2")
Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_OperatingSystem",,48)

' Loop through each item in the collection
For Each objItem in colItems
    Wscript.Echo "Computer Name (CSName): " & objItem.CSName
    Wscript.Echo "Caption: " & objItem.Caption
    Wscript.Echo "Version: " & objItem.Version
    Wscript.Echo "Build Number: " & objItem.BuildNumber
    Wscript.Echo "Build Type: " & objItem.BuildType
    Wscript.Echo "OS Type: " & objItem.OSType
    Wscript.Echo "Other Type Description: " & objItem.OtherTypeDescription
    Wscript.Echo "Service Pack: " & objItem.ServicePackMajorVersion & "." & objItem.ServicePackMinorVersion
    Wscript.Echo "Boot Device: " & objItem.BootDevice
    Wscript.Echo "System Drive: " & objItem.SystemDrive
    Wscript.Echo "Number of Users: " & objItem.NumberOfUsers
Next
