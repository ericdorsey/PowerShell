# Set Out of Office 
Set-MailboxAutoReplyConfiguration -Identity user@domain.com -AutoReplyState Enabled -InternalMessage "internal message" -ExternalMessage "external message"