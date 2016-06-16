# Get Win 7 and Win 8 PCs
Get-AdComputer -Filter {(OperatingSystem -Like "Windows 8*") -or (OperatingSystem -Like "Windows 7*")} | Select Name | Sort-Object Name