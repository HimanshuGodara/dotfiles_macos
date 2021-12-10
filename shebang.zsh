#! /usr/bin/env zsh
echo "\n <<< Running $0 >>> \n"
echo "ZSH_Version = $ZSH_VERSION" 
echo "The current shell is: $(ps $$ -ocomm=)"
exists brew && echo "brew is installed" || echo "brew is not installed" 
exists nonexistent && echo "nonexistent is installed" || echo "nonexistent is not installed"
which exists