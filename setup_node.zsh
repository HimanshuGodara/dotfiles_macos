#!/usr/bin/env zsh

echo "\n<<< Starting Node setup >>>\n"


# Node versions are managed by 'n', which is in the Brewfile.
# See zshrc for the N_PREFIX variable and addition to the PATH.
if exists node; then 
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with n..."
  n latest
fi


