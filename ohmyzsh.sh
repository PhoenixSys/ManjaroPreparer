#! /bin/bash

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install linear theme
wget https://raw.githubusercontent.com/MrYazdan/zsh-linear-theme/main/linear.zsh-theme -O ~/.oh-my-zsh/themes/linear.zsh-theme
omz theme set linear 

# set startup
echo "nerdfetch \necho ''" > ~/.zshenv

# add plugins
omz plugin enable git python colorize git-flow docker zsh-autosuggestions
