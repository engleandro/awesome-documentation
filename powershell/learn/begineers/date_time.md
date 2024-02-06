# POWERSHELL: DATE AND TIME

## DATE AND TIME

```powershell
Get-Date
$date = (Get-Date)

$date | Get-Member -MemberType Methods
$date | Get-Member -MemberType Property

$date.Date
$date.Year
$date.Month
$date.Day
$date.Hour
$date.Minute
$date.DayOfWeek
$date.DayOfYear
```

## TIME ZONE

```powershell
$tz = (Get-TimeZone)

$date | Get-Member -MemberType Property
$tz | Get-Member -MemberType Property

$tz.BaseUtcOffset
$tz.DaylightName
$tz.DisplayName
$tz.StandardName
```
