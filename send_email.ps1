# Test relay via PowerShell
$smtp = New-Object Net.Mail.SmtpClient("relay.foo.local")
$smtp.Send("no_reply@test.com", "destination_user@foo.com", "Test title", "Test email body")