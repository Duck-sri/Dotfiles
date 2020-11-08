#!/bin/bash

# to do the basic stuff
sudo apt install vim zsh git tree cmake ranger vim-gtk3 htop flameshot fortune cowsay cmatrix tmux -y
cd /home/$USER/
mkdir conf
sudo mkdir /softs

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#install spaceship
git clone https://github.com/denysdovhan/spaceship-prompt.git "/home/ram/.oh-my-zsh/themes/spaceship-prompt" --dept=1
ln -s "/home/ram/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme" "/home/ram/.oh-my-zsh/themes/spaceship.zsh-theme"
sudo chsh -s /usr/bin/zsh root
# for syntx highlighting
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting}
git clone https://github.com/zdharma/fast-syntax-highlighting.git ~ZSH_CUSTOM/plugins/fast-syntax-highlighting
# add fast-syntax-highlighting to the plugins list with space , no comma
# for install one-dark on gnome-terminal
sudo apt install gnome-terminal fonts-firacode -y
bash -c "$(curl -fsSL https://raw.githubusercontent.com/denysdovhan/gnome-terminal-one/master/one-dark.sh)"

zsh

#for making the title bar disappear
echo "winid=$(xprop -root | awk '/_NET_ACTIVE_WINDOW/ {print $5;exit;}')"
echo "xprop -id $winid -f _MOTIF_WM_HINTS 32c -set _MOTIF_WM_HINTS "0x2,0x0,0,0x0,0x0""

#for extensions
sudo apt install gnome-shell-extensions gnome-shell-extension-pixelsaver
# for papirus icons
sudo add-apt-repository ppa:papirus/papirus

## apps that i downloaded
# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
#vlc
sudo apt install vlc -y
# for zathura
sudo apt install zathrua -y
# for timeshift
sudo apt install timeshift -y


# for MS-sql-server
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/18.04/mssql-server-2019.list)"
sudo apt update
sudo apt install mssql-server -y
sudo /opt/mssql/bin/mssql-conf setup
# to sqlcmd
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
sudo apt install mssql-tools unixodbc-dev -y

# for spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install spotify-client -y

# for installing flatpak
sudo apt install flatpak

# for planner
flatpak install planner

# fo installing npm
sudo apt install npm -y

# for taskbook
npm install --global taskbook

#for vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.vim
mkdir ~/.vim/plugged
mkdir ~/.vim/configs

# for neo vim 
sudo apt install python3-neovim -y
mkdir /home/$USER/config/nvim
mkdir /home/$USER/config/nvim/site/autoload
mkdir /home/$USER/config/nvim/site/plugins
mkdir /home/$USER/config/nvim/site/configs
touch /home/$USER/config/nvim/site/init.nvim
sh -c 'curl -fLo "/home/$USER/.config/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# for sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update && sudo apt-get install sublime-text -y
