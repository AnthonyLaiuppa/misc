#! /bin/bash

#Linux packages
sudo apt update; sudo apt upgrade -y 
sudo apt install vim git python3-dev python3-pip curl steam htop tree virtualbox vagrant unzip 


#Python venv stuff
pip3 install virtualenv virtaulenvwrapper
echo 'export PIP_REQUIRE_VIRTUALENV=true' >> ~/.bashrc
echo -en '\n\n#virtualenvwrapper\nexport VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3\nexport WORKON_HOME=~/.envs\nsource ~/.local/bin/virtualenvwrapper.sh\n' >> ~/.bashrc
echo 'alias mkvenv="mkvirtualenv"' >> ~/.bashrc
echo 'alias mkvenv3="mkvirtualenv -p python3"' >> ~/.bashrc
echo 'alias rmvenv="rmvirtualenv"' >> ~/.bashrc
echo 'alias lsvenv="lsvirtualenv"' >> ~/.bashrc


#Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb 
sudo rm google-chrome-stable_current_amd64.deb 


######## Solarize errything 
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git
bash gnome-terminal-colors-solarized/install,sh -s 1 -p 1 --install-dircolors
curl https://raw.github.com/seebi/dircolors-solarized/master/dircolors.256dark > ~/.dircolors
git clone https://github.com/altercation/vim-colors-solarized.git
mkdir .vim
mkdir .vim/colors
cp vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
echo 'set t_Co=256' >> ~/.vimrc
echo 'set background=dark' >> ~/.vimrc
echo 'colorscheme solarized' >> ~/.vimrc
echo 'export TERM=xterm-256color' >> ~/.bashrc
echo 'if [ -f ~/.dir_colors/dircolors ]
    then eval `dircolors ~/.dir_colors/dircolors`
fi' >> ~/.bashrc
echo 'eval `dircolors /home/laiuppa/.dir_colors/dircolors`' >> ~/.bashrc
sudo rm -rf gnome-terminal-colors-solarized
sudo rm -rf vim-colors-solarized/


#Skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb
sudo apt --fix-broken install
sudo rm skypeforlinux-64.deb


#Sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update; sudo apt install sublime-text -y 

