# Get Members of a Group Alphabetically
Get-AdGroupMember -Identity "Group Name Here" | Select name | Sort-Object name