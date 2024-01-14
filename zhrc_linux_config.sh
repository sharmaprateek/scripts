#!/bin/bash

echo "Installing git-core zsh"
sudo apt install git-core zsh -y

echo "Install Oh-My-Zsh from Robby Russell’s repository..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "install fonts powerline..."
sudo apt install fonts-powerline -y

echo "changing the theme to 'Jonathan'..."
sed -i 's/^ZSH_THEME=.*$/ZSH_THEME="jonathan"/' ~/.zshrc

echo "updating the plugin list..."
sed -i 's/^plugins=.*$/plugins="(git colored-man-pages zsh-syntax-highlighting zsh-autosuggestions)"/' ~/.zshrc

echo "cloning plugins..."
cd ~/.oh-my-zsh/custom/plugins

echo "installing zsh synatx highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting

echo "installing zsh autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions
cd ~/

echo "done... sourcing .zshrc"
source ~/.zshrc
