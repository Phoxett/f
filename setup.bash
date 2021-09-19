#! /bin/sh

sudo apt update
sudo apt upgrade
sudo apt update
sudo apt install wget software-properties-common apt-transport-https gparted virtualbox linux-generic linux-image-generic linux-headers-generic linux-signed-generic mono-complete
sudo apt install default-jre -y
wget https://files.nicehash.com/nhminer/nhos/nhos-1.2.8/image/nhos-1.2.8.img.gz
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
sudo apt update
sudo apt upgrade

sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.8

echo "alias python=python3.8" > ~/.bash_aliases
source ~/.bash_aliases
echo "alias python=python3.8" > ~/.bashrc
source ~/.bashrc
alias python=python3.8