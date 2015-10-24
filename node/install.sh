#!/bin/sh
if test ! $(which nvm)
then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

  export NVM_DIR="$HOME/.nvm"
  source "$NVM_DIR/nvm.sh"

  nvm install 4.0.0
  nvm alias default 4.0.0
fi
