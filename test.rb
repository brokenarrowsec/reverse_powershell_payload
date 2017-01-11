#!/bin/ruby

system("ruby reverse_powershell_payload.rb")
print "[+] One more moment..."
system("mv powershell_reverse_ducky.txt reverse_powershell_payload.txt")
system("rm powershell_reverse_ducky.txt")
system("tail -n+7 reverse_powershell_payload.txt > reverse_powershell_payload.tmp")
system("rm reverse_powershell_payload.txt")
system("mv reverse_powershell_payload.tmp reverse_powershell_payload.txt")
system("sed 's/^.......//' reverse_powershell_payload.txt > reverse_powershell_payload.tmp")
system("sed -i '$ d' reverse_powershell_payload.txt")
