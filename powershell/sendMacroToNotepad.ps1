Add-Type -TypeDefinition @"
    using System;
    using System.Runtime.InteropServices;

    public class ShowWindowHelper {
        [DllImport("user32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
    }
"@

# Load System.Windows.Forms for SendKeys
Add-Type -AssemblyName System.Windows.Forms

# Open notepad
$notepad = Start-Process notepad.exe -PassThru

# Wait for notepad to load
Start-Sleep -Seconds 2

# Get the handle for Notepad
$handle = $notepad.MainWindowHandle

# Activate the Notepad window
[ShowWindowHelper]::ShowWindow($handle, 5)

# Send the text
[System.Windows.Forms.SendKeys]::SendWait("Hello Friend!")
