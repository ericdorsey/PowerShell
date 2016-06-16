# Get All Groups person is member of (names of groups only)
Get-ADPrincipalGroupMembership "First Last" | Select name | Sort-Object name | Format-Table -HideTableHeaders