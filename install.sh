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

