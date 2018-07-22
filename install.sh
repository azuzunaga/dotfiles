#!/usr/bin/env bashs

# Get the current dotfiles and copy them to a back-up folder
install_dir=`pwd`
cd ~
mkdir bak
find . .* -type f -maxdepth 0 -exec cp {} ./bak \;
cd install_dir
find . .* -type f -maxdepth 0 -exec ln -sf {} ~ \;
cp ./com.googlecode.iterm2.plist ~/Library/Preferences/
cp ./fonts/* ~/Library/Fonts
echo "Completely quit any terminal applications and launch iterm2. All set!"
