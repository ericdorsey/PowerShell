# Last logon date for an array of accounts

$accounts = "Account1", "Account2", "Account3", "Account4"
$accounts | foreach {Get-ADUser $_ -Property name, LastLogonDate} | Select name, LastLogonDate | Sort-Object name