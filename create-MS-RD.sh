#!/bin/sh

# Base on @stevewood-tx script and additional @gmarnin

# grab the logged in users name
loggedInUser=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`

# global
RDCPLIST=/Users/$loggedInUser/Library/Containers/com.microsoft.rdc.mac/Data/Library/Preferences/com.microsoft.rdc.mac.plist
myUUID=`uuidgen`
LOGPATH='/private/var/inte/logs'

# set variables
connectionName="NAME YOUR CONNECTION"
hostAddress="SERVERIPADDRESS"

# Put an AD domain name, put it in the userName variable, otherwise leave blank
userName='DOMAINNAME\'
userName+=$loggedInUser
resolution="1280 720"
colorDepth="32"
fullScreen="FALSE"
scaleWindow="TRUE"
useAllMonitors="FALSE"

set -xv; exec 1> $LOGPATH/rdcPlist.txt 2>&1

defaults write $RDCPLIST bookmarkorder.ids -array-add "'{$myUUID}'"
defaults write $RDCPLIST bookmarks.bookmark.{$myUUID}.label -string "$connectionName"
defaults write $RDCPLIST bookmarks.bookmark.{$myUUID}.hostname -string $hostAddress
defaults write $RDCPLIST bookmarks.bookmark.{$myUUID}.username -string $userName
defaults write $RDCPLIST bookmarks.bookmark.{$myUUID}.resolution -string "@Size($resolution)"
defaults write $RDCPLIST bookmarks.bookmark.{$myUUID}.depth -integer $colorDepth
defaults write $RDCPLIST bookmarks.bookmark.{$myUUID}.fullscreen -bool $fullScreen
defaults write $RDCPLIST bookmarks.bookmark.{$myUUID}.scaling -bool $scaleWindow
defaults write $RDCPLIST bookmarks.bookmark.{$myUUID}.useallmonitors -bool $useAllMonitors

# Comment out the following if you do not need to execute a program on start of connection
# You can adjust the string to be any app that is installed.
defaults write $RDCPLIST bookmarks.bookmark.{$myUUID}.remoteProgram -string "C:\Program Files (x86)\SIMS\SIMS .net\Palsur.exe"


chown -R "$loggedInUser:staff" /Users/$loggedInUser/Library/Containers/com.microsoft.rdc.mac