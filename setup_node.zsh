#!/usr/bin/env zsh

echo "\n<<< Starting Node setup >>>\n"


# Node versions are managed by 'n', which is in the Brewfile.
# See zshrc for the N_PREFIX variable and addition to the $path array.
if exists node; then 
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with n..."
  n latest
fi

#  Install Global NPM packages
npm install --global firebase-tools
npm install --global @angular/cli
npm install --global @ionic/cli
npm install --global typescript
npm install --global json-server
npm install --global http-server
npm install --global trash-cli
echo "Global NPM packages installed:"
npm list --global --depth=0
