# POWERSHELL: CMDLET (COMMAND-LET)

A cmdlet (pronounced "command-let") is a compiled command. A cmdlet can be developed in .NET or .NET Core and invoked as a command within PowerShell.

Cmdlets are named according to a verb-noun naming standard. You can see the list of approved verbs by using the `Get-Verb` cmdlet:

```shell
Get-Verb
Get-Verb G??
Get-Verb P*
```

Three core cmdlets allow you to delve into what cmdlets exist and what they do:

* `Get-Command`: The Get-Command cmdlet lists all of the available cmdlets on your system. Filter the list to quickly find the command you need.
* `Get-Help`: Run the Get-Help core cmdlet to invoke a built-in help system. You can also run an alias help command to invoke Get-Help but improve the reading experience by paginating the response.
* `Get-Member`: When you call a command, the response is an object that contains many properties. Run the Get-Member core cmdlet to drill down into that response and learn more about it.

There are thousand cmdlets, so use `Get-Command`:

```shell
Get-Command
Get-Command *-Host
Get-Command G??-Host
Get-Command -Verb Get
Get-Command -Noun File*

Get-Help Get-Host
Get-Help Get-Host -Full
Get-Help Get-Host -Online

Get-Host | Get-Member
```
