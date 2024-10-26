### Sysmon Event ID Cheat Sheet

**Location of Sysmon Logs:**
- **Windows Vista and higher:** `Applications and Services Logs/Microsoft/Windows/Sysmon/Operational`
- **Older systems:** System event log
- **Timestamps:** UTC standard time

### Sysmon Event IDs Overview:

| Event ID | Event Type | Description |
| -------- | ---------- | ----------- |
| **1**    | Process Creation | Logs process creation details (command line, hash, ProcessGUID). |
| **2**    | File Creation Time Change | Logs file creation time modification by a process. |
| **3**    | Network Connection | Logs TCP/UDP connections; linked to process (disabled by default). |
| **4**    | Sysmon Service State Change | Logs when the Sysmon service starts/stops. |
| **5**    | Process Terminated | Logs when a process terminates (includes UtcTime, ProcessGuid, ProcessId). |
| **6**    | Driver Loaded | Logs driver loading events; includes hash and signature info. |
| **7**    | Image Loaded | Logs module loading in a process (disabled by default, use "-l" to enable). |
| **8**    | CreateRemoteThread | Detects thread creation in another process (code injection indicator). |
| **9**    | RawAccessRead | Detects raw read operations from the drive (e.g., data exfiltration). |
| **10**   | ProcessAccess | Logs when a process accesses another process (can indicate credential theft). |
| **11**   | FileCreate | Logs file creation/overwriting (useful for monitoring malware drop locations). |
| **12**   | Registry Event (Object create/delete) | Monitors creation/deletion of Registry keys/values (e.g., autostart locations). |
| **13**   | Registry Event (Value Set) | Logs modifications of Registry values (DWORD/QWORD). |
| **14**   | Registry Event (Key and Value Rename) | Logs rename operations on Registry keys/values. |
| **15**   | FileCreateStreamHash | Logs creation of named file streams; includes file content hash. |
| **16**   | ServiceConfigurationChange | Logs changes to Sysmon’s configuration (filter rules updates). |
| **17**   | PipeEvent (Pipe Created) | Logs creation of named pipes (often used by malware). |
| **18**   | PipeEvent (Pipe Connected) | Logs connections made to named pipes. |
| **19**   | WmiEvent (WmiEventFilter Activity) | Logs WMI event filter registration. |
| **20**   | WmiEvent (WmiEventConsumer Activity) | Logs registration of WMI consumers. |
| **21**   | WmiEvent (WmiEventConsumerToFilter Activity) | Logs consumer binding to a WMI filter. |
| **22**   | DNSEvent (DNS Query) | Logs DNS queries by processes (not available on Windows 7 and earlier). |
| **23**   | FileDelete (Archived) | Logs file deletion and saves deleted file in the archive directory. |
| **24**   | ClipboardChange | Logs changes to system clipboard contents. |
| **25**   | ProcessTampering | Logs process hiding techniques (e.g., process hollowing). |
| **26**   | FileDeleteDetected | Logs file deletions without saving the file. |
| **27**   | FileBlockExecutable | Logs and blocks creation of executable files (PE format). |
| **28**   | FileBlockShredding | Logs and blocks file shredding operations. |
| **29**   | FileExecutableDetected | Logs creation of new executable files (PE format). |
| **255**  | Error | Logs errors within Sysmon (e.g., heavy load or bugs). |

### Abbreviations for Registry Root Keys:

| Key Name                              | Abbreviation                  |
| ------------------------------------- | ---------------------------- |
| HKEY_LOCAL_MACHINE                   | HKLM                          |
| HKEY_USERS                           | HKU                           |
| HKEY_LOCAL_MACHINE\System\ControlSet00x | HKLM\System\CurrentControlSet |
| HKEY_LOCAL_MACHINE\Classes           | HKCR                          |

