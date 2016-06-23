# Get Group Categories

$groups = "group1", "group2", "group3"

ForEach ($group in $groups) {
    $group_details = Get-ADGroup $group
    $group_category = $group_details.GroupCategory
    $output = "{0}: {1}" -f $group, $group_category
    $output
}