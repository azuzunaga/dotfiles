#!/usr/bin/env bash

# Get the current dotfiles and copy them to a back-up folder
install_dir=(pwd)
cd ~
mkdir bak
find . .* -type f -maxdepth 0 -exec cp {} ./bak \;
