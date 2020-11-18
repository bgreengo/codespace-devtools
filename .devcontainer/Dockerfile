FROM jsii/superchain

RUN yum update -y
RUN yum groupinstall 'Development Tools' -y
RUN yum install -y jq wget zsh sudo

RUN npm i -g aws-cdk 

RUN mv $(which aws) /usr/bin/aws_V1

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=1000

# Setup user
RUN adduser $USERNAME -s /bin/sh -u $USER_UID -U && \
  mkdir -p /etc/sudoers.d && \
  echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && \
  chmod 0440 /etc/sudoers.d/$USERNAME

# install aws-cli v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install

# install kubectl
RUN curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.8/2020-09-18/bin/linux/amd64/kubectl && \
  chmod +x kubectl && \
  mv kubectl /usr/local/bin/kubectl

# Setup shell
USER $USERNAME
RUN sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended &> /dev/null
ENV ENV="/home/$USERNAME/.ashrc" \
  ZSH=/home/$USERNAME/.oh-my-zsh \
  EDITOR=vi \
  LANG=en_US.UTF-8

RUN git clone https://github.com/denysdovhan/spaceship-prompt.git "/.oh-my-zsh/custom/themes/spaceship-prompt" --depth=1
RUN ln -s "/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "/.oh-my-zsh/custom/themes/spaceship.zsh-theme" 

# install linuxbrew
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" "" --unattended
RUN echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/vscode/.profile

# RUN brew install starship 
# RUN brew install docker
# RUN brew install kubectl
# RUN brew install helm
# RUN brew install awscli 
# RUN brew install pipenv
# RUN brew install pulumi 
# RUN brew install terraform 
# RUN brew install node 
# RUN brew install yarn
# RUN brew install vim
# RUN brew install cdk8s 
# RUN brew install ruby