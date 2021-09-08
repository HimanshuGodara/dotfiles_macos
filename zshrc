echo "Hello from .zshrc"

# Set Variables

# Change ZSH Options

# Create Aliases
alias ls="ls -lAF"

# Customize Prompt(s)
PROMPT="%1~ %L  %# "

RPROMPT="%*"

# Add Location to $PATH Variables

export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="/opt/homebrew/opt/python@3.9/libexec/bin:$PATH"

# Write Handy Functions
function mkcd() {
	mkdir -p "$@" && cd "$_"
}
# Use ZSH Plugins

# ... and Other Suprises