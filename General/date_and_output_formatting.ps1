# Date & string formatting
$today = Get-Date

"{0}\{1}\{2}" -f $today.Year, $today.Month, $today.Day