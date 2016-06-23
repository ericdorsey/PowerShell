# Get all computers with names starting like "Foo*"
Get-ADComputer -Filter "Name -Like 'Foo*'" | Select-Object Name | Sort-Object Name | Format-Table -HideTableHeaders