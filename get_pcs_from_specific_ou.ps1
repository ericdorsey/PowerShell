# Get all PC names in an OU

# Find the DistinguishedName first, in this example we can just manually run this part first
# Get-ADComputer -Filter {Name -Like "FOOCOMPUTER01"}

$ou = "OU=...." # Put in the DistinguishedName property from result above in this string

# Query just that OU
Get-ADComputer -Filter "*" -SearchBase $ou | Select Name | Sort-Object Name
