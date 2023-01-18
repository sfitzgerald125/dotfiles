#!/bin/bash
if [ ! -f $HOME/.gitconfig ]; then
  echo "====================="
  echo "Configuring Git"
  echo "====================="

  # Collect inputs
  echo -n "  Name: "
  read GIT_NAME
  echo -n "  Email: "
  read GIT_EMAIL

  git config --global user.name "$GIT_NAME"
  git config --global user.email "$GIT_EMAIL"
  git config --global alias.lb "!git reflog show --pretty=format:'%gs ~ %gd' --date=relative | grep 'checkout:' | grep -oE '[^ ]+ ~ .*' | awk -F~ '!seen[\$1]++' | head -n 10 | awk -F' ~ HEAD@{' '{printf(\"  \\033[33m%s: \\033[37m %s\\033[0m\\n\", substr(\$2, 1, length(\$2)-1), \$1)}'"

  echo "====================="
  echo "Finished Configuring Git"
  echo -e "=====================\n"
fi

# Install oh-my-zsh
if [ ! -d $HOME/.oh-my-zsh ]; then
  echo "====================="
  echo "Installing Oh-My-Zsh"
  echo "====================="

  sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

  echo "====================="
  echo "Finished installing Oh-My-Zsh"
  echo -e "=====================\n"
fi

echo "====================="
echo "Creating symlinks to dotfiles"
echo "====================="

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ln -s ${BASEDIR}/.zshrc ~/.zshrc
ln -s ${BASEDIR}/.tmux.conf ~/.tmux.conf

# make .config directory if it doesn't already exist
mkdir -p ~/.config
ln -s ${BASEDIR}/nvim ~/.config/nvim

echo "====================="
echo "Finished creating symlinks to dotfiles"
echo -e "=====================\n"
