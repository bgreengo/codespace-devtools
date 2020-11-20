FROM linuxbrew/linuxbrew

RUN sudo apt-get upgrade -y 
RUN sudo apt-get update -y
RUN sudo apt-get install jq -y

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

#brew install tools
RUN brew install starship 
RUN brew install yarn
RUN brew install docker
RUN brew install awscli 
RUN brew install pulumi 
RUN brew install terraform 
RUN brew install node 
RUN brew install cdk8s 
RUN brew install ruby

#install cdk 
RUN npm install -g aws-cdk

RUN gem install terraspace && terraspace --version




