#!/bin/sh

#################################
#
# delete_keychains script
# 
# Deletes the contents of the ~/Library/Keychains/ directory
# when run.
#
#################################

loggedInUser=`python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");'`
echo "Logging out user: $loggedInUser"

rm -Rf /Users/$loggedInUser/Library/Keychains/*
echo "Removing user Keychain items: $?"

foldercontents=`ls /Users/$loggedInUser/Library/Keychains/`
echo "Contents of user Keychain folder: $foldercontents"

exit 0