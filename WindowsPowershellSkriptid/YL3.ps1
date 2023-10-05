$name = Read-Host "Sisesta oma nimi "
$surname = Read-Host "Sisesta perekonnanimi: " 
$username = $($name + "." + $surname)
if(Get-ADUser -Filter { SamAccountName -eq $username }){
    Write-Host "Kasutaja '$username' on juba olemas Active Directory-s. Palun vali teine kasutajanimi."
} else {
    New-ADUser -Name $($name + " " + $surname) -SamAccountName $username -UserPrincipalName $username -AccountPassword $pass -Enabled $true
    Write-Host "Kasutaja '$username' on lisatud Active Directory-sse."
}