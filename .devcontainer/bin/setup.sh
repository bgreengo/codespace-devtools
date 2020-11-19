#!/bin/bash

/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/$USERNAME/.profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv); exit 0

brew install helm	
brew install pipenv	
brew install pulumi 
brew install terraform 	
brew install cdk8s 	
brew install ruby
