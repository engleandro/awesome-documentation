# POWERSHELL: LOGIC CONTROL

## BASIC LOGIC CONTROL: IF-ELSEIF-IF

```shell
[int16]$index = 1

# Logic-Control: If Statement
if ( $index -eq 1 ) { 
    Write-Host "One"
}

# Logic-Control: If-Else Statement
if ( $index -eq 1 ) {
    Write-Host "One"
} else {
    Write-Host "Any"
};

# Logic-Control: If-Elseif-Else Statement
if ( $index -eq 1 ) {
    Write-Host "One"
} elseif ( $index -eq 2) {
    Write-Host "Two"
} else {
    Write-Host "Any"
};
```

# SWITCH

```shell
$fruit = 'strawberry'

switch($fruit) {
    "strawberry" {
        Write-Host 'red'
    },
    "orange" {
        Write-Host 'orange'
    },
    "grape" {
        Write-Host 'violet'
    }
};
```
