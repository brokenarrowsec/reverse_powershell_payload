#!/bin/ruby

system("ruby generator.rb")
system("mv powershell_reverse_ducky.txt reverse_powershell_payload.txt")
system("tail -n+7 reverse_powershell_payload.txt > reverse_powershell_payload.tmp")
system("rm reverse_powershell_payload.txt")
system("mv reverse_powershell_payload.tmp reverse_powershell_payload.txt")
system("sed 's/^.......//' reverse_powershell_payload.txt > reverse_powershell_payload.tmp")
system("sed -i '$ d' reverse_powershell_payload.tmp")
system("mv reverse_powershell_payload.tmp reverse_powershell_payload.bat")
system("rm reverse_powershell_payload.txt")
system("echo 'system("' | cat - reverse_powershell_payload.bat > temp && mv temp reverse_powershell_payload.rb"
system("echo '")' >> reverse_powershell_payload.rb")
