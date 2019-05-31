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
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install imgcat
brew tap eddieantonio/eddieantonio
brew install imgcat

# Install other useful tools.
brew install ack
brew install git
brew install git-lfs
brew install autoconf
brew install automake
brew install bash-completion
brew install ccat
brew install composer
brew install ctags
brew install fontconfig
brew install freetype
brew install fzf
brew install gd
brew install gdbm
brew install gettext
brew install git
brew install go
brew install graphviz
brew install icu4c
brew install jpeg
brew install libgpg-error
brew install libksba
brew install libpng
brew install libtiff
brew install libtool
brew install libyaml
brew install libzip
brew install ncurses
brew install ngrep
brew install openssl
brew install openssl@1.1
brew install pcre
brew install pcre2
brew install pkg-config
brew install python
brew install python@2
brew install qt
brew install rbenv
brew install readline
brew install ruby-build
brew install sphinx-doc
brew install sqlite
brew install tldr
brew install tree
brew install watchman
brew install webp
brew install xz
brew install zsh

# Remove outdated versions from the cellar.
brew cleanup
