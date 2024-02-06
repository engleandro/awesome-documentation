# POWERSHELL: DATA TYPE

Powershell has many data type. All those data type are based on .NET data objects.

```shell
# powershell has all .NET types.
$integer_number = 1
$float_number = 1.42
$a_char = 'b'
$char_string = 'powershell'
$matriz = @(1, 2, 3)
$another_matriz = 1..5

# re-build the variable, it doesn't raise an error
$integer_number = 'b'

# The powershell environment hints the data type automatically.
$integer_number.gettype()

# you can force the data type
[int16]$another_integer = 10
# Raises an Error: $another_integer = 'b'
```



```shell
```



```shell
```

```shell
```
