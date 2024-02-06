# POWERSHELL: LOGICAL OPERATOR

Link: 

```shell
(1 -eq 1) -and (1 -eq 1) # True
(1 -eq 1) -and (1 -eq 0) # False

(1 -eq 1) -or (1 -eq 1) # True
(1 -eq 1) -or (1 -eq 0) # True
(1 -eq 0) -or (1 -eq 0) # False

-not (1 -eq 1) # False 
-not (1 -eq 0) # True

(1 -eq 1) -xor (1 -eq 1) # False
(1 -eq 1) -xor (1 -eq 0) # True
(1 -eq 0) -xor (1 -eq 0) # False
```
