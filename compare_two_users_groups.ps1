# Compare AD Groups

$user1 = "First Last"
$user2 = "First Last2"

$user1_groups = Get-ADPrincipalGroupMembership $user1 | Select-Object -Property Name
$user2_groups = Get-ADPrincipalGroupMembership $user2 | Select-Object -Property Name

ForEach ($i in $user1_groups) {
    if ($user2_groups -match $i) {
        $result = "{0} --> Match" -f $i.name
    else {
        $result = "{0} --> Different" -f $i.name
    }
    $result
}
