#!/bin/bash

echo "Configuring Git..."
echo -n "  Name: "
read GIT_NAME
echo -n "  Email: "
read GIT_EMAIL

git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global alias.lb "!git reflog show --pretty=format:'%gs ~ %gd' --date=relative | grep 'checkout:' | grep -oE '[^ ]+ ~ .*' | awk -F~ '!seen[\$1]++' | head -n 10 | awk -F' ~ HEAD@{' '{printf(\"  \\033[33m%s: \\033[37m %s\\033[0m\\n\", substr(\$2, 1, length(\$2)-1), \$1)}'"

# Install oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Link the directories
echo "Creatng Symlinks to dotfiles"
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/.vimrc ~/.vimrc

# zsh
ln -s ${BASEDIR}/.zshrc ~/.zshrc