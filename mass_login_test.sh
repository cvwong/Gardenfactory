#!/bin/sh

# Test a mass login on computers
# NOTE: This script is intended to be used via ARD
# Send command as root while Macs are at the login window
# Replace username and password with real credential to test mass login

osascript -e 'tell application "System Events" to keystroke "username"'
osascript -e 'tell application "System Events" to keystroke tab'
osascript -e 'tell application "System Events" to delay 0.5'
osascript -e 'tell application "System Events" to keystroke "password"'
osascript -e 'tell application "System Events" to keystroke return'

exit 0