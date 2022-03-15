#! /bin/bash

scheme="data/konsole/DarkOneNuanced.colorscheme"
profile="data/konsole/Yazdan.profile"
konsole_dir="$HOME/.local/share/konsole"
mkdir -p $konsole_dir

# Copy konsole profile theme:
cp -f "$scheme" "$konsole_dir/"
cp -f "$profile" "$konsole_dir/"
