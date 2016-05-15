#/bin/bash
#very dangerous as it unrecoverably removes all profilemanager data
sudo /Applications/Server.app/Contents/ServerRoot/usr/share/devicemgr/backend/wipeDB.sh
sudo serveradmin stop devicemgr
sudo serverctl disable service=com.apple.DeviceManagement.postgres
sudo rm -R /Library/Server/ProfileManager/Config/ServiceData/Data/backup
sudo rm -R /Library/Server/ProfileManager/Config/ServiceData/Data/PostgreSQL
sudo /Applications/Server.app/Contents/ServerRoot/System/Library/ServerSetup/CommonExtras/80-devicemgrcommon.sh
