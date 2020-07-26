#!/bin/bash
# Install Ferramentas Basicas
sudo apt update -y
sudo apt upgrade -y
sudo apt install git telnet apt-transport-https curl unzip -y

# Terraform
curl "https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip" -o "terraform.zip"
unzip terraform.zip
sudo mv terraform /usr/local/bin/terraform
sudo apt update -y
sudo apt upgrade -y

# Ansible
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
sudo apt update -y
sudo apt upgrade -y

# Install AWS CLI V2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

sudo apt update -y
sudo apt upgrade -y

# Install AWS CLI EBCli
sudo apt install python3-pip
sudo pip3 install awsebcli --upgrade --user
sudo pip3 install awsebcli --upgrade --user

sudo apt update -y
sudo apt upgrade -y

# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl


# Configuração de themas

sudo apt install zsh

# Instalando Oh My Zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd 
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh
cd 

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

