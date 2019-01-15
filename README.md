## Platform

OSX 10.9 - MacOS 10.14

## Installation Notes

Requirements:
* internet connection
* admin password
* a final release of the OS not a beta to developer installation

## Installation Notes

To start the process run ./install.sh
this will download the core command line tools and prep the system for Installation

Depending of what kind of installation you require will change which scripts you use need to run

* for a stand OS build
Then run ./brew.sh
next run ./cask.sh

* for a lightweigh OS build
Then run ./brew-misc.sh
next run ./cask-misc.sh

* for a server OS build
Then run ./brew.sh
next run ./cask-server.sh

the other cask files in this repo are for use by me for where i'm working

## Install for User Desktop

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/mahdihastie/system-builder/master/install.sh)"
```

## Install for Media Server

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/mahdihastie/system-builder/master/install-server.sh)"
```

## Install for Work Desktops  

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/mahdihastie/system-builder/master/install-iq.sh)"
```
