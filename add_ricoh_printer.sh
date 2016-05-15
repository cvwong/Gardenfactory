#!/bin/bash
/usr/sbin/lpadmin -p RICOH_EQITRAC_BnW -L 'GIS' -E -v smb://'GISEQTSVR.gardenschool.edu.my/Equitrac_MAC' -P /Library/Printers/PPDs/Contents/Resources/RICOH\\ Aficio\\ MP\\ C3502 -o printer-is-shared=false -o sides=one-sided
/usr/sbin/lpadmin -p RICOH__EQITRAC_Colour -L 'GIS' -E -v smb://'GISEQTSVR.gardenschool.edu.my/Equitrac_MAC' -P /Library/Printers/PPDs/Contents/Resources/RICOH\\ Aficio\\ MP\\ C3502 -o printer-is-shared=false -o sides=one-sided
/usr/sbin/lpadmin -p RICOH_EQITRAC_BnW -o auth-info-required=gis,edumy -o ColorModel=Gray; lpadmin -p RICOH_EQITRAC_Colour -o auth-info-required=gis,edumy -o ColorModel=CMYK
/usr/sbin/lpoptions -d Ricoh_Mac_BnW
exit 0