#!/bin/bash

if [[ $(pwd) != *"dotfiles" ]]; then
  echo "Please run the script from the dotfiles root."
  exit 1
fi

echo "Running install on shared directory"
./shared/install.sh