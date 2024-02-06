# VARIABLES STATEMENTS

Powershell has a dynamic and strong type programming.

The variable names can content:
* Number [0-9]
* Lower- [a-z] and Upper-Cas [A-Z] Letters
* Some Special Charaters as underscore (_).

Powershell are no case-sensitive.

```shell
# Powershell hints the data type
$variable_name = 'John'
$variable_name.gettype()

# but you can force the type
[int32]$Number1 = 7
# Error: $Number = 'b' or [int]$Number1 = 'c'
```

# New-, Get- and Set-Variable

```shell
New-Variable -name name -value Leandro
# Error: If you redo it because there is already a var named as name
Get-Variable name
Set-Variable -name name -value "Leandro Alves"
Get-Variable name
```

# Clear a Variable

```shell
# clear a variable data
$name = 'Leandro'
Clear-Variable name

# delete a variable data
$name = 'Leandro'
Remove-Variable name
```
