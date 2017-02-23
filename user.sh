#!/bin/sh

echo "Please enter the user name"
read NAME
echo "the user name is now $NAME"

echo "Please enter the short name"
read SHORT
echo "the short name is now $SHORT"

echo "Please enter the user ID"
read ID
echo "the ID is now $ID"

dscl . -create /Users/$NAME
dscl . -create /Users/$NAME UserShell /bin/bash
dscl . -create /Users/$NAME RealName "$SHORT"
dscl . -create /Users/$NAME UniqueID "$ID"
dscl . -create /Users/$NAME PrimaryGroupID 20
dscl . -create /Users/$NAME NFSHomeDirectory /Users/$NAME
dscl . -passwd /Users/$NAME password

dscl . -append /Groups/admin GroupMembership $NAME
