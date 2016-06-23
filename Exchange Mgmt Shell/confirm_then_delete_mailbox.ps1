# Delete Mailbox Contents

# Confirm it exists, and alias is correct
Get-Mailbox -Identity "AliasHere"

# Then run
#Search-Mailbox -Identity "AliasHere" -DeleteContent -Force -Confirm