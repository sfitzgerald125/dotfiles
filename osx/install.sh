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
echo "Running brew bundle"
echo "====================="
brew bundle --file "~/dotfiles/osx/Brewfile"
echo "====================="
echo "Finished brew bundle"
echo -e "=====================\n"

./shared/install.sh
