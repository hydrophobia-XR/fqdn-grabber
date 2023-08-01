##This script may be used for legal purposes only.  Users take full responsibility
##for any actions performed using this script.  The author accepts no liability
##for damage caused by this script.  If these terms are not acceptable to you, then
##do not use this script.

$hostname = Get-Content "C:\path\to\input\list.txt"

##Parse the file and perform a dns query to grab the fqdn of machine
foreach ($name in $hostname){    
    $result = Resolve-DnsName -name $name -type A
    Write-Output $result.name | Out-File -FilePath "C:\path\to\output\tmp.csv" -Append
}
