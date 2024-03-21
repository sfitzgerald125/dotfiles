#!/bin/bash

if [[ $(pwd) != *"dotfiles" ]]; then
  echo "Please run the script from the dotfiles root."
  exit 1
fi

echo "Downloading apt packages..."
grep -vE '^#' ./linux/my-apt-packages | xargs sudo apt install -y

echo "====================="
echo "Creating Symlinks for Ubuntu specific files"
echo "====================="
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ln -s ${BASEDIR}/.zshrc ~/.zshrc
ln -s ${BASEDIR}/vs-code/settings.json ~/.config/Code/User/settings.json
ln -s ${BASEDIR}/vs-code/keybindings.json ~/.config/Code/User/keybindings.json

echo "Downloading packages from source..."
./linux/downloads-from-source.sh

echo "Running install on shared directory..."
./shared/install.sh