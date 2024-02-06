# POWERSHELL BASICS: GETTING STARTED

Get information about the Powershell application:

```powershell
Get-Host
```

Some nice short-cut with CTRL, in the Powershell:
* ESC - delete all the line content
* TAB - run the intellisense
* CTRL + SPACE - gives all the information about cmdlet, object, parameters

Get information 

```powershell
Get-Command                 # Get information about the comands
Get-Command *-Host          # Get the commanda with some pattern
Get-Command ???-Host        # ? is a "coringa" operator
```

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
