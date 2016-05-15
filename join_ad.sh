#!/bin/sh

# Join Active Directory and configure plugin settings

############## Set Variables

adAdmin="adadmin"
	# Set the AD Domain Admin username - DO NOT leave these in place when not using the script!

adPass="yourpw"
	# Set the AD Domain Admin password - DO NOT leave these in place when not using the script!

adDomain="training.gardenschool.edu.my"
	# Set the AD Domain name, e.g. myaddomain.local
	# though PLEASE don't use .local for your AD domain, that's just asking for trouble!

adOU="CN=Computers,DC=domain,DC=com"
	# Set the OU for the machine to be put into. E.G.:
	# "OU=Macs,OU=Computers,DC=mydomain,DC=Local" DO remember to put it in quotes

computerName=$(/usr/sbin/scutil --get LocalHostName)
	# Set the current computer name as a variable

############## Join AD

dsconfigad -force -add "$adDomain" -computer "$computer" -username "$adAdmin" -password "$adPass" -ou "$adOU"
	# Join AD

dsconfigad -sharepoint disable -useuncpath disable -passinterval 0 -mobile enable -mobileconfirm disable
	# Configure plugin settings

############## Script complete

exit 0