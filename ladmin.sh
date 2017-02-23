#!/bin/sh


dscl . -create /Users/ladmin
dscl . -create /Users/ladmin UserShell /bin/bash
dscl . -create /Users/ladmin RealName "ladmin"
dscl . -create /Users/ladmin UniqueID "510"
dscl . -create /Users/ladmin PrimaryGroupID 20
dscl . -create /Users/ladmin NFSHomeDirectory /Users/ladmin
dscl . -passwd /Users/ladmin password

dscl . -append /Groups/admin GroupMembership ladmin
