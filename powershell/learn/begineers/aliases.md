# POWERSHELL FOR BEGINNERS: ALIASES

Powershell emulates native executables (depends on the operational system) and allows user-defined commands by using aliases.

On Windows, you can use `dir` command in Powershell, but actually you are calling an alias to `Get-ChildItem`.

SO: dir (alias) -> Get-ChildItem

All the commands by doing `Get-Command *-Alias`:

```shell
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Cmdlet          Export-Alias                                       3.1.0.0    Microsoft.PowerShell.Utility
Cmdlet          Get-Alias                                          3.1.0.0    Microsoft.PowerShell.Utility
Cmdlet          Import-Alias                                       3.1.0.0    Microsoft.PowerShell.Utility
Cmdlet          New-Alias                                          3.1.0.0    Microsoft.PowerShell.Utility
Cmdlet          Set-Alias                                          3.1.0.0    Microsoft.PowerShell.Utility
```

An example:

```shell
# show an alias list
Get-Alias

# create a new alias names as "ctrl_l" -> cls -> Clear-Host
Get-Help New-Alias -Name ctrl_l -Value cls
Get-Alias

# Change/Update an Alias
Set-Alias -Name ctrl_l -Value Clear-Host

# Export and Import Aliases
Export-Alias -Path pwsh_aliases.txt
# Error(s): Import-Alias -Path pwsh_aliases.txt
```
