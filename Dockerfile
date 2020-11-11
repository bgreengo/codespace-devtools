FROM linuxbrew/linuxbrew

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

RUN test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv) && \
  test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv) && \
  test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile && \
  echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

#brew install tools
RUN brew install starship awscli pulumi terraform node cdk8s ruby

#install cdk 
RUN npm install -g aws-cdk

# install terraspace
RUN gem install terraspace

ADD refresh_creds.sh /