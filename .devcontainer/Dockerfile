FROM linuxbrew/linuxbrew

RUN sudo apt-get upgrade -y 
RUN sudo apt-get update -y
RUN sudo apt-get install jq -y

RUN brew upgrade

#brew install tools
RUN brew install yarn
RUN brew install aws-cdk
RUN brew install docker
RUN brew install vim
RUN brew install kubectl
RUN brew install helm
RUN brew install gh
RUN brew install awscli 
RUN brew install pipenv
RUN brew install pulumi 
RUN brew install terraform 
RUN brew install node 
RUN brew install cdk8s 
RUN brew install rbenv

RUN brew install pipx
RUN pipx ensurepath
RUN pipx install aws-sso-credential-process
RUN pipx install aws-export-credentials

RUN echo 'eval "$(starship init bash)"\n \
  export AWS_CONFIGURE_SSO_DEFAULT_SSO_START_URL=https://d-9267050e58.awsapps.com/start\n \
  export AWS_CONFIGURE_SSO_DEFAULT_SSO_REGION=us-west-2\n \
  export PATH="$HOME/.rbenv/bin:$PATH"\neval "$(rbenv init)"' > ~/.bashrc
RUN rbenv install 2.7.2
RUN rbenv global 2.7.2
RUN echo 2.7.2 > ~/.ruby-version
RUN rbenv rehash
RUN gem install terraspace 

RUN npm install -g @aws-amplify/cli
