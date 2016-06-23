# Add Multiple Users to Multiple Groups

$groups_to_add = "group1", "group2", "group3"
$users_to_add = "user1", "user2", "user3"

# Verify groups exist in AD
ForEach ($group in $groups_to_add) {
    try {
        Get-ADGroup $group | Out-Null
    } catch {
        Write-Host "Group '$group' doesn't exist! Exiting."
        exit
    }
}

# Verify the users exist in AD
ForEach ($user in $users_to_add) {
    try {
        Get-ADuser $user | Out-Null
    } catch {
        Write-Host "User '$user' doesn't exist! Exiting."
        exit
    }
}

ForEach ($user in $users_to_add) {
    ForEach ($group in $groups_to_add) {
        Add-ADGroupMember $group $user
        $output = "{0} {1}" -f $group, $user
        Write-Host $output
    }
    Write-Host
}