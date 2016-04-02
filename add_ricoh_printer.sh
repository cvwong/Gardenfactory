#!/bin/bash
/usr/sbin/lpadmin -p Ricoh_Mac_BnW -L 'GIS' -E -v smb://'mfpsvr/Ricoh_Mac' -P /Library/Printers/PPDs/Contents/Resources/RICOH\\ Aficio\\ MP\\ C3502 -o printer-is-shared=false -o sides=one-sided
/usr/sbin/lpadmin -p Ricoh_Mac_Colour -L 'GIS' -E -v smb://'mfpsvr/Ricoh_Mac' -P /Library/Printers/PPDs/Contents/Resources/RICOH\\ Aficio\\ MP\\ C3502 -o printer-is-shared=false -o sides=one-sided
/usr/sbin/lpadmin -p Ricoh_Mac_BnW -o auth-info-required=Admin,edumy -o ColorModel=Gray; lpadmin -p Ricoh_Mac_Colour -o auth-info-required=Admin,edumy -o ColorModel=CYMK
/usr/sbin/lpoptions -d Ricoh_Mac_BnW
exit 0