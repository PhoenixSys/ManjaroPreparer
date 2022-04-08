#! /bin/bash

profile="data/latte/My Layout.layout.latte"
latte_dir="$HOME/.config/latte/"
mkdir -p $latte_dir

# Copy late profile :
cp -f "$profile" "$latte_dir"

# run latte
pid=$(pidof latte-dock)
kill -9 $pid
nohup latte-dock &
