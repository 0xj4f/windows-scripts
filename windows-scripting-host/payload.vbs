Set shell = WScript.CreateObject("Wscript.Shell")
shell.Run("C:\Windows\System32\calc.exe " & WScript.ScriptFullName),0,True
' Ways to execute
' c:\Windows\System32>wscript c:\Users\victim\Desktop\payload.vbs
' cscript payload.vbs