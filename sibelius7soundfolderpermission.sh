#!/bin/bash

#Change the ownership of the files and folders
sudo chown -R gis:admin /Library/Application\ Support/Avid/Sibelius\ Sounds/

#Change the permission of the files and folders
sudo chmod -R 775 /Library/Application\ Support/Avid/Sibelius\ Sounds/

exit 0
