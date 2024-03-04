#!/bin/bash
if [[ $(pwd) != *"dotfiles" ]]; then
  echo "Please run the script from the dotfiles root."
  exit 1
fi

# Link VsCode settings
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rm ~/AppData/Roaming/Code/User/settings.json
rm ~/AppData/Roaming/Code/User/keybindings.json
ln -s ${BASEDIR}/vs-code/settings.json ~/AppData/Roaming/Code/User/settings.json
ln -s ${BASEDIR}/vs-code/keybindings.json ~/AppData/Roaming/Code/User/keybindings.json