# Who's Logged In?
Get-WmiObject -Class Win32_ComputerSystem -ComputerName "pc_name_here" | select username
