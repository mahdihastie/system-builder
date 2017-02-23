#!/bin/sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#--sudo)
#  SUDO_ENABLE=true;
#;;

SUDO_CMD='sudo'
echo "Please enter the host name"
read NAME
echo "the hostname is now $NAME"

eval $SUDO_CMD scutil --set ComputerName $NAME
eval $SUDO_CMD scutil --set LocalHostName $NAME
eval $SUDO_CMD scutil --set HostName $NAME
