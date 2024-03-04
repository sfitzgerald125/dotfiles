#!/bin/bash

if ! which prettierd > /dev/null; then
  echo -e "Prettierd not found! Install? (y/n) \c"
  read -r REPLY
  if [ "$REPLY" == "y" ]; then
    npm i -g @fsouza/prettierd
  fi
fi
