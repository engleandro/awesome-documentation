# POWERSHELL FOR BEGINEERS: CONSTANTS

```shell
$pi = [math]::pi # static method/property class access
Remove-Variable -name pi -force

Set-Variable -name PI -value ([math]::pi) -Option Constant
# Error: Set-Variable -name PI -value ([math]::pi)
# Error: Remove-Variable PI -force
```
