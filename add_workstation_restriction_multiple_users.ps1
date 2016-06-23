# Add Workstation Logon Restriction to Multiple Users
$users_to_add = "Bill Smith", "First Last", "First Last2"
$servers_to_add = "SERVER01", "SERVER02", "SERVER03"

# Verify the users exists in AD
ForEach ($user in $users_to_add) {
    try {
        Get-ADUser $user | Out-Null
    } catch {
        Write-Host "User '$user' doesnt' exist! Exiting."
        exit
    }
}

# Verify the server exists in AD
ForEach ($server in $servers_to_add) {
    try {
        Get-ADComputer $server | Out-Null
    } catch {
        Write-Host "Server '$server' doesn't exist! Exiting."
        exit
    }
}

# Set $csv_servers formatting for use in -Logonworkstations argument
$csv_servers = $servers_to_add -join ","

# Add each Log On To restriciton from $csv_servesr to users in $users_to_add
ForEach ($user in $users_to_add) {
    Set-ADUser -Identity $user -LogonWorkstations $csv_servers
    $output = "{0} {1}" -f $user, $csv_servers
    Write-Host $output
    Write-Host
}