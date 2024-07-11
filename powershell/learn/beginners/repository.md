# POWERSHELL: REPOSITORY

```shell
# Get-Command pwd
$current_path = Get-Location

# Get-Command dir
Get-ChildItem

# Get-Command cd
Set-Location .
Set-Location ..
Set-Location \; Set-Location /
Set-Location $home
Set-Location $current_path

# Get-Command mkdir
New-Item -Path new_folder -ItemType Directory

# Get-Command del
Remove-Item -Path .\new_folder\
```
