#!/usr/bin/env bash


info () {
  printf "  [ \033[00;34m..\033[0m ] $1"
}

user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

link_file () {
  ln -s $1 $2
  success "linked $2 to $1"
}

remove_file () {
  rm -rf $1
  success "removed $1"
}

move_file () {
  mv $1 $2
  success "moved $1 to $2"
}
Status API Training Shop Blog About


cd ~
git clone https://github.com/mahdihastie/system-builder && \

cd ~/system-builder && \
bash brew.sh && \
bash cask.sh && \
bash scutil.sh
