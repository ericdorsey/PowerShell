# Get UserPrincipalName & SAM Account Names
Get-ADUser -Filter * -Properties SamAccountName, UserPrincipalName | sort Name