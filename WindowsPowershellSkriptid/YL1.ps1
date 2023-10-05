$name = Read-Host "Sisesta oma nimi "
$surname = Read-Host "Sisesta perekonnanimi: " 
$pass = ConvertTo-SecureString -String "Parool1" -AsPlainText -Force
New-LocalUser -Name $($name + "." + $surname) -Password $pass