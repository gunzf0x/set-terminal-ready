#!/bin/bash

# Copy the script to install NerdFonts to home directory 
cp ./installFonts.sh $HOME/installFonts.sh

# Go to home directory
cd

# Install LSD (version 0.23.1)
wget https://github.com/lsd-rs/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb
sudo dpkg -i lsd_0.23.1_amd64.deb
rm lsd_0.23.1_amd64.deb

# Install Nerd-Fonts
chmod +x ./installFonts.sh
./installFonts.sh

# Delete the script once it has done its job
rm ./installFonts.sh

# Install bat (run it using 'batcat' command)
sudo apt install bat -y

# Install Zsh
sudo apt install zsh -y

# Install Oh-My-Zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Install Oh-My-Zsh Plugins

# Zsh-Autocompletion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Zsh-Highlightning
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 

# Powerlevel 10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# Run and configure Powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

