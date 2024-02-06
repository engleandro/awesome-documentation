# POWERSHELL BASICS: COMPARISON OPERATORS

There are many comparison operators:

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


# Greater-Than (-gt) or Greater-or-Equal-than (-ge)


```

For `strings`, use case-sensitive operators (-ceq and -cne):

```powershell
# case sensitive equal (-ceq) and case-sensitive not-equal (-cne)
"test" -ceq "Test"                  # False
"test" -cne "Test"                  # True
```