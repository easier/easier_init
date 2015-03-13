#!/usr/bin/env bash

#Init node environment at vagrant
#easier 2015.02.11 
#hi@eaiser.im


echo "Script begin now!"

#Setup common tools
sudo apt-get install openssh-server -y
sudo apt-get install git-core -y
sudo apt-get install curl -y
sudo apt-get install byobu -y
sudo apt-get install ack-grep -y
sudo apt-get install tree -y
sudo apt-get install tig -y
sudo apt-get install zsh -y
sudo apt-get install lftp -y
sudo ln -s `which ack-grep` /bin/ack

#Config git
git config --global github.user easier
git config --global github.email fysian@gmail.com

#Config custome vim
git clone https://github.com/easier/dotvim.git
mv dotvim .vim
ln -s .vim/vimrc .vimrc

#Use oh-my-zsh 
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

#Setup npm tools
wget https://api.sinas3.com/v1/SAE_lnmp/soft/lnmp1.1-full.tar.gz --no-check-certificate
unzip lnmp1.1-full.tar.gz



echo "---------------------------------------------------------------------------"
echo "Done!"
echo "---------------------------------------------------------------------------"
echo ""
echo ""
