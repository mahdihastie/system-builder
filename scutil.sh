#!/bin/bash
# Ask the user for login details
read -p 'Computer Name: ' uservar
read -sp 'Password: ' passvar
echo
sudo su - $passvar
scutil --set LocalHostName $uservar
scutil --set HostName $uservar
scutil --set ComputerName $uservar

echo 'name set to' $uservar
