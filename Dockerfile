FROM linuxbrew/linuxbrew

#brew install tools
RUN brew install starship awscli pulumi terraform node cdk8s ruby

#install cdk 
RUN npm install -g aws-cdk

# install terraspace
RUN gem install terraspace

ADD refresh_creds.sh /