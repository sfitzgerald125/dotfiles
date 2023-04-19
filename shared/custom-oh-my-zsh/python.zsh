if command -v pyenv &> /dev/null
then
  echo 'export PYENV_ROOT="$HOME/.pyenv"'
  echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"'
  echo 'eval "$(pyenv init -)"'
fi
