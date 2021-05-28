#!/bin/bash
sudo snap install code --classic
sudo snap install eclipse --classic
sudo snap install telegram-desktop
sudo snap install slack --classic
sudo snap install vlc
sudo snap install shotcut --classic
sudo snap install spotify
sudo snap install youtube-dl
sudo snap install obs-studio
sudo snap install inkscape
sudo snap install sublime-text --classic
sudo snap install postman
sudo snap install redis-desktop-manager
sudo snap install pycharm-educational --classic
sudo snap install storage-explorer
sudo snap install dynamodb-gui-client
sudo snap install mysql-workbench-community --candidate

sudo apt install git telnet apt-transport-https curl -y

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update -y

sudo apt install brave-browser -y

# Install AWS CLI V2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install


# Install AWS CLI EBCli
apt install python3-pip
pip3 install awsebcli --upgrade --user
pip3 install awsebcli --upgrade --user

# Install kOps - Kubernetes Operations
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops
sudo mv kops /usr/local/bin/kops


# Install Install kubectl binary 
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl
kubectl version

# Install eksctl binary 
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version


