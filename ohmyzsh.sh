#! /bin/bash

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# clone zsh-autocomplete
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions


# install linear theme
wget https://raw.githubusercontent.com/MrYazdan/zsh-linear-theme/main/linear.zsh-theme -O ~/.oh-my-zsh/themes/linear.zsh-theme

# set startup
echo "nerdfetch \necho ''" > ~/.zshenv

# add plugins
omz plugin enable git python colorize git-flow docker zsh-autosuggestions
omz theme set linear 
