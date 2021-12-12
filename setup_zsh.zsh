#!/usr/bin/env zsh

echo "\n<<< Starting ZSH setup >>>\n"

# Installation unnecessary, it's in the Brewfile

# Add ZSH to the list of shells
if grep '/opt/homebrew/bin/zsh' '/etc/shells'>>/dev/null || grep '/usr/local/bin/zsh' '/etc/shells'>>/dev/null; then
  echo "ZSH is already in /etc/shells\n"
else
  echo "Need to add ZSH to /etc/shells\n"
  echo "Enter superuser (sudo) password to edit /etc/shells"
  echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

# Change the default shell to ZSH
current_shell="$(echo $SHELL)"
if [ "${current_shell}" = "/opt/homebrew/bin/zsh" ]; then
  echo "ZSH is the default shell, skipping change shell command\n"
else
  echo "Setting ZSH as default login shell"
  echo "Enter user password to change login shell"
  chsh -s /opt/homebrew/bin/zsh
fi

# Symlink sh to zsh
sh_link=`readlink /private/var/select/sh`
if [ "${sh_link}" = "/bin/zsh" ]; then
  echo "sh is already symlinked to /bin/zsh, skipping..."
else
  echo "Symlinking sh to zsh..."
  echo "Enter superuser (sudo) password to symlink sh to zsh"
  sudo ln -sfv /bin/zsh /private/var/select/sh
fi

# Would prefer to link sh with homebrew version of zsh instead
#  sudo ln -sfv /opt/homebrew/bin/zsh /private/var/select/sh
#  sudo ln -sfv `brew--prefix zsh` /private/var/select/sh

# Instructor's Solution--->
# if sh --version | grep -q zsh; then
#   echo "/private/var/select/sh is symlinked to zsh"
# else
#   echo "Enter the superuser (sudo) password to symlink sh to zsh"
#   sudo ln -sfv /bin/zsh /private/var/select/sh
# fi
