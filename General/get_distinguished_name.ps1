# Get Distinguished Name
Get-ADOrganizationalUnit -Filter 'Name -like "Foo"' | Format-Table DistinguishedName -HideTableHeaders