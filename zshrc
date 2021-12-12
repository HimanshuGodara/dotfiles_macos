echo "Hello from .zshrc"

# Set Variables
# Syntax highlighting for man pages using bat
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

# Change ZSH Options

# Create Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias man='batman'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
# Customize Prompt(s)
PROMPT="
%1~ %L  %# "

RPROMPT="%*"

# Add Location to $PATH Variables

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:$N_PREFIX/bin"

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="/opt/homebrew/opt/python@3.9/libexec/bin:$PATH"
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# Write Handy Functions
function mkcd() {
	mkdir -p "$@" && cd "$_"
}
# Use ZSH Plugins

# ... and Other Suprises
