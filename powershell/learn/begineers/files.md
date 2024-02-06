# POWERSHELL: FILES

```shell
# Get-Command pwd
$current_path = Get-Location

# Get-Command mkdir
New-Item -Path new_folder -ItemType Directory

# Get-Command type
New-Item -Path new_file -ItemType File
$my_file = Get-Content -Path "new_file"
$my_file

# echo "powershell is amazing" >> .\new_file
Add-Content -Path new_file -Value "powershell is amazing"

# FileInfoObject attributes and methods
Get-Content -Path new_file | Get-Member

# Get-Command mv
Move-Item -Path new_file -Destination .\new_folder\new_file

# Get-Command del
Remove-Item -Path .\new_folder\new_file
Remove-Item -Path .\new_folder\

# Get-Command cd
Set-Location $current_path
```
