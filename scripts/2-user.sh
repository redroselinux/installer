#!/usr/bin/env bash
#github-action genshdoc
#
# @file User
# @brief User customizations and AUR package installation.
echo -ne "
\_Redrose Linux Installer (based on ArchTitus)
\_User configuration and AUR packages
"
source $HOME/ArchTitus/configs/setup.conf

  cd ~
  mkdir "/home/$USERNAME/.cache"
  touch "/home/$USERNAME/.cache/zshhistory"
  git clone "https://github.com/ChrisTitusTech/zsh"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
  ln -s "~/zsh/.zshrc" ~/.zshrc

export PATH=$PATH:~/.local/bin

echo -ne "
\_System ready for 3-post-setup.sh
"
exit
