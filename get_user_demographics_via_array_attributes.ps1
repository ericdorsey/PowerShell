# Get user demographics; custom array for attributes
# $() SubExpression operator

$attributes = $(
    "Name",
    "Department",
    "Manager",
    "Office",
    "telephoneNumber",
    "StreetAddress",
    "City",
    "State",
    "HomePhone",
    "mobile",
    "LastLogonDate",
    "AccountExpirationDate",
    "Enabled"
)

Get-ADUser -Filter * -Properties $attributes | Select-Object $attributes | Sort-Object Name | Export-Csv "demographics.csv"