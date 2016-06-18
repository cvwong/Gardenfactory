#!/bin/bash

#Delete all users and their home folders except admin accounts

for account in $(ls /Users | grep -v 'YOURADMINACCOUNT' | grep -v 'Shared')
do
    dscl . -delete /Users/$account
    rm -rf /Users/$account
done