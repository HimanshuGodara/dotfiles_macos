#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# TODO: Keep an eye out for a better '--no-quarantine' option
# Currently we can't do brew budle and --no-quarantine together
# It's currently exported in zshrc as:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474

brew bundle --verbose