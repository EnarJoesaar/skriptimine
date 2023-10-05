$name = Read-Host "Sisesta nimi mida soovid kustutada: "
$surname = Read-Host "Sisesta perekonnanimi: " 
$pass = ConvertTo-SecureString -String "Parool1" -AsPlainText -Force
Remove-ADUser -Identity $($name + "." + $surname)