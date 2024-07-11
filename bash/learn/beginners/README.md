# POWERSHELL BASICS: GETTING STARTED

Link: https://learn.microsoft.com/en-us/training/modules/introduction-to-powershell

Get information about the Powershell application:

```powershell
$PSVersionTable
$PSVersionTable.PSVersion

Get-Host
```

Some short-cut with CTRL, in the Powershell:
* ESC - delete all the line content
* TAB - run the intellisense
* CTRL + SPACE - gives all the information about cmdlet, object, parameters

PowerShell includes cmdlets that help you discover PowerShell:

* `Get-Verb`: Running this command returns a list of verbs that most commands adhere to. The response includes a description of what these verbs do. Since most commands follow this naming convention, it sets expectations on what a command does. This helps you select the appropriate command and what to name a command, should you be creating one.
* `Get-Command`: This command retrieves a list of all commands installed on your machine.
* `Get-Member`: It operates on object based output and is able to discover what object, properties and methods are available for a command.
* `Get-Help`: Invoking this command with the name of a command as an argument displays a help page describing various parts of a command.

```powershell
Get-Verb                    # Returns a list of verbs that most commands adhere to

Get-Command                 # Get information about the comands
Get-Command *-Host          # Get the commanda with some pattern
Get-Command ???-Host        # ? is a "coringa" operator

Get-Help Get-Host
```

Using these commands, you can discover almost anything you need to know about PowerShell.

Print on screen:

```powershell
Write-Host Powershell prints on the screen
Write-Host $home; Write-Host $ofs

Clear-Host                          # equal to cls or clear; it clears the screen
```

Change directory:

```powershell
# similar to dir on the CMD or ls on bash
Get-Childitem

# similar to cd on the CMD or bash
Set-Location .\Some-Folder          # cd ./some-folder
Set-Location ..                     # equal to "cd .."
Set-Location \; Set-Location /      # equal to cd /
Set-Location $home                  # equal to cd ~
```
