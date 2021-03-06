#!/usr/bin/env zsh

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

# Install `wget`
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install zsh
brew install zsh

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
brew install fzf
brew install git
brew install git-lfs
brew install highlight
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install readline
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install sqlite
brew install tree
brew install vbindiff
brew install zopfli

# Install useful dev tools
brew install --cask iterm2 # Preferred terminal
brew install --cask postman
brew install pyenv

# More custom apps

brew install --cask cheatsheet # Keyboard shortcut hints for all apps
brew install --cask caffeine


brew install --cask qlcolorcode qlmarkdown qlprettypatch qlstephen quicklook-csv quicklook-json webpquicklook
brew install --cask suspicious-package

# Remove outdated versions from the cellar.
brew cleanup