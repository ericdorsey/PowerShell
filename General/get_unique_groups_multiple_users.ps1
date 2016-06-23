# Get unique groups for multiple users

$users = "First Last", "First Last2", "First Last3"
$users | foreach { Get-AdPrincipalGroupMembership $_ } | Sort-Object name | Get-Unique | Select Name