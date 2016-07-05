#!/usr/bin/env bash

cd ~
chsh -s $(which zsh)
git clone https://github.com/mahdihastie/system-builder
cd ~/system-builder
git submodule update --init --recursive
install/bootstrap.sh
