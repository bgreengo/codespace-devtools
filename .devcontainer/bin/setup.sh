#!/bin/bash

git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew
mkdir ~/.linuxbrew/bin
ln -s ~/.linuxbrew/Homebrew/bin/brew ~/.linuxbrew/bin
eval $(~/.linuxbrew/bin/brew shellenv)

brew install helm	
brew install pipenv	
brew install pulumi 
brew install terraform 	
brew install cdk8s 	
brew install ruby