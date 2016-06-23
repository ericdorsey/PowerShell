# PowerShell List Comprehensions
0..10 | Where {($_ % 2) -eq 0} | ForEach{$_ *2}