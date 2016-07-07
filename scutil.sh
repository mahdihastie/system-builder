#!/usr/bin/env bash

user "please enter the username"
read -n 1 IQ_USERNAME

user "please enter the machine name"
read -n 1 IQ_HOSTNAME

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo
sudo scutil --set LocalHostName $IQ_HOSTNAME
sudo scutil --set HostName $IQ_HOSTNAME
sudo scutil --set ComputerName $IQ_HOSTNAME

echo 'name set to' $IQ_HOSTNAME
