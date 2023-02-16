#!/bin/bash

if [[ $(pwd) != *"dotfiles" ]]; then
  echo "Please run the script from the dotfiles root."
  exit 1
fi

echo "Downloading apt packages..."
grep -vE '^#' ./linux/my-apt-packages | xargs sudo apt install -y

echo "Downloading packages from source..."
./linux/downloads-from-source.sh

echo "Running install on shared directory..."
./shared/install.sh
