#!/bin/bash
if [[ $(pwd) != *"dotfiles" ]]; then
  echo "Please run the script from the dotfiles root."
  exit 1
fi

# Install Homebrew
if ! command -v brew &> /dev/null
then
  echo "====================="
  echo "Installing Homebrew"
  echo "====================="
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "====================="
  echo "Finished Homebrew"
  echo -e "=====================\n"
fi

echo "====================="
echo "Creating Symlinks for OSX specific files"
echo "====================="
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ln -s ${BASEDIR}/.zshrc ~/.zshrc
ln -s ${BASEDIR}/.tmux.conf ~/.tmux.conf
ln -s ${BASEDIR}/vs-code/settings.json ~/Library/Application Support/Code/User/settings.json
ln -s ${BASEDIR}/vs-code/keybindings.json ~/Library/Application Support/Code/User/keybindings.json
ln -s ${BASEDIR}/.config/* ~/.config

echo "====================="
echo "Running brew bundle"
echo "====================="
brew bundle --file "~/dotfiles/osx/Brewfile"
echo "====================="
echo "Finished brew bundle"
echo -e "=====================\n"

echo "====================="
echo "Starting SKHD and YABAI"
echo "====================="
skhd --start-service
yabai --start-service

# ./shared/install.sh
