#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`.
brew install gnu-sed

# Install more recent versions of some macOS tools.
brew install openssh
brew install screen

# Install xQuartz (allows GUI through ssh)
# Don't forget to allow X forwarding in /etc/ssh/sshd_config
# Add the line X11Forwarding yes
brew cask install xquartz

# Install imgcat
brew tap eddieantonio/eddieantonio
brew install imgcat

# Install other useful tools.
brew install ack
brew install git
brew install git-lfs
brew install ccat
brew install fd
brew install fzf
brew install git
brew install graphviz
brew install libyaml # colorls needs libyaml
brew install ngrep
brew install pyenv
brew install pyenv-virtualenv
brew install rbenv
brew install ripgrep
brew install tldr
brew install tree
brew install xz # pyenv needs xz
brew install zsh

# Install fira code font (for font ligatures)
brew tap caskroom/fonts
brew cask install font-fira-code

# Remove outdated versions from the cellar.
brew cleanup
