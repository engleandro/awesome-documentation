# POWERSHELL BASICS: COMPARISON OPERATORS

## GENERAL COMPARISON OPERATORS

There are many comparison operators:
* EQual to (-eq)
* Not Equal To (-ne)
* Greater Than (-gt)
* Greater than or Equal to (-ge)
* Lesser Than (-lt)
* Lesser than or Equal to (-le) 


```powershell
# Equal (-eq)
1 -eq 1                             # True
1 -eq 2                             # False
[int] -eq [int32]                   # True
[int] -eq [int16]                   # False
[single] -eq [double]               # False
"powershell" -eq "Powershell"       # True; for strings, use case-sensitive equal operator (-ceq)

# Not Equal (-ne)
1 -ne 1                             # False
1 -ne 2                             # True
[int] -ne [int32]                   # False
[int] -ne [int16]                   # True
[single] -ne [double]               # True
"powershell" -ne "Powershell"       # False; for strings, use case-sensitive equal operator (-ceq)

# Lesser-Than (-lt) or Lesser-or-Equal-than (-le)
1 -lt 2                             # True
1 -lt 1                             # False
1 -le 2                             # True
1 -le 1                             # True

# Greater-Than (-gt) or Greater-or-Equal-than (-ge)
2 -gt 1                             # True
2 -gt 2                             # False
2 -ge 1                             # True
2 -ge 2                             # True
```

## COMPARISON OPERATORS FOR STRINGS

For `strings`, use case-sensitive operators (-ceq and -cne):

```powershell
# case sensitive equal (-ceq) and case-sensitive not-equal (-cne)
"test" -ceq "Test"                  # False
"test" -cne "Test"                  # True
```
