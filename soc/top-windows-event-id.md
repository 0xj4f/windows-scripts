# Windows Security Event IDs Cheat Sheet

A quick reference guide for SOC operators to monitor critical Windows security events.

---

## **Authentication Events**

### **4624** - *An account was successfully logged on*

- **Importance**: Successful logon event.
- **Logon Types**:
  - **Type 2**: Interactive logon (local console).
  - **Type 3**: Network logon (accessing shared resources).
  - **Type 10**: Remote interactive logon (RDP sessions).

### **4625** - *An account failed to log on*

- **Importance**: Failed logon attempts.
- **Significance**: Detects brute-force attacks and unauthorized access attempts.

### **4648** - *A logon was attempted using explicit credentials*

- **Importance**: Logon using alternate credentials.
- **Significance**: Potential lateral movement or credential misuse.

### **4672** - *Special privileges assigned to new logon*

- **Importance**: Logon with administrative privileges.
- **Significance**: Monitor privileged account usage.

### **4740** - *A user account was locked out*

- **Importance**: Account lockouts due to failed logins.
- **Significance**: Indicates possible brute-force attacks.

---

## **Account Management Events**

### **4720** - *A user account was created*

- **Importance**: New account creation.
- **Significance**: Unauthorized accounts may indicate a breach.

### **4722** - *A user account was enabled*

- **Importance**: Previously disabled account enabled.
- **Significance**: Potential unauthorized access.

### **4723** - *An attempt was made to change an account's password*

- **Importance**: Password change attempts.
- **Significance**: Could signal account compromise.

### **4724** - *An attempt was made to reset an account's password*

- **Importance**: Password reset attempts.
- **Significance**: Watch for unauthorized password resets.

### **4732** - *A member was added to a security-enabled local group*

- **Importance**: Changes in group memberships.
- **Significance**: Possible elevation of privileges.

---

## **Process and Service Events**

### **4688** - *A new process has been created*

- **Importance**: Process creation.
- **Significance**: Detects execution of unauthorized or malicious software.

### **4689** - *A process has exited*

- **Importance**: Process termination.
- **Significance**: Understand execution patterns.

### **4697** - *A service was installed in the system*

- **Importance**: New service installation.
- **Significance**: Attackers may install services for persistence.

### **7045** - *A service was installed in the system* (System Log)

- **Importance**: Similar to 4697 but logged in the System log.

---

## **Audit Policy Changes**

### **4719** - *System audit policy was changed*

- **Importance**: Audit policy modifications.
- **Significance**: Attackers may alter to hide activities.

### **1102** - *The audit log was cleared*

- **Importance**: Audit logs cleared.
- **Significance**: Indicates potential cover-up of malicious activities.

---

## **PowerShell Events**

### **4103** - *PowerShell Execution Details*

- **Importance**: Detailed PowerShell command execution.
- **Significance**: Detects use of PowerShell in attacks.

### **4104** - *PowerShell Script Block Logging*

- **Importance**: Records full script blocks.
- **Significance**: Identifies obfuscated or malicious scripts.

---

## **Network and Share Events**

### **5140** - *A network share object was accessed*

- **Importance**: Access to shared folders.
- **Significance**: Monitor for unauthorized data access.

### **5145** - *A network share object was checked to see whether client can be granted desired access*

- **Importance**: Attempts to access network shares.
- **Significance**: Potential lateral movement or reconnaissance.

---

## **Kerberos Authentication Events**

### **4771** - *Kerberos pre-authentication failed*

- **Importance**: Failed Kerberos authentication.
- **Significance**: Possible password-guessing attacks.

---

## **RDP Session Events**

### **4778** - *A session was reconnected to a Window Station*

- **Importance**: RDP session reconnected.
- **Significance**: Monitor remote access.

### **4779** - *A session was disconnected from a Window Station*

- **Importance**: RDP session disconnected.

---

## **Credential Access Events**

### **5379** - *Credential Manager credentials were read*

- **Importance**: Access to stored credentials.
- **Significance**: Potential credential harvesting.

---

## **Group Membership Enumeration**

### **4798** - *A user's local group membership was enumerated*

- **Importance**: Listing group memberships.
- **Significance**: Could indicate reconnaissance.

---

## **Service and Task Changes**

### **4702** - *A scheduled task was updated*

- **Importance**: Changes to scheduled tasks.
- **Significance**: Attackers may schedule tasks for malicious activities.

### **7034** - *A service terminated unexpectedly*

- **Importance**: Unexpected service termination.
- **Significance**: May indicate malicious interference.

---

## **Privileged Operations**

### **4673** - *A privileged service was called*

- **Importance**: Access to privileged services.
- **Significance**: Detect misuse of privileged operations.

---

## **Failed Credential Validation**

### **4776** - *The computer attempted to validate the credentials for an account*

- **Importance**: Local authentication attempts.
- **Significance**: Failed attempts may signal compromise.
