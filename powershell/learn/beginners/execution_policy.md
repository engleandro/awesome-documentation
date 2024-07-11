# POWERSHELL: EXECUTION POLICY

Powershell has Execution Policy to increase security in IT operations. It is applied in many level: computer, process, user and others.

Get the cmdlet information by typing `Get-Command *-ExecutionPolicy`:

```shell
Get-Command *-ExecutionPolicy`

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Cmdlet          Get-ExecutionPolicy                                3.0.0.0    Microsoft.PowerShell.Security
Cmdlet          Set-ExecutionPolicy                                3.0.0.0    Microsoft.PowerShell.Security
```

All the Execution Policy:

```shell
Set-ExecutionPolicy -ExecutionPolicy \
    AllSigned     Bypass        Default       RemoteSigned  Restricted    Undefined     Unrestricted
```

To check your current Execution Policy:

```shell
Get-ExecutionPolicy -List

        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser       Undefined
 LocalMachine    RemoteSigned (All other levels combined)
```

To change the Execution Policy (must have administrador rights):

```shell
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope Process
```
