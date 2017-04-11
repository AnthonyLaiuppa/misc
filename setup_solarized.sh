git clone https://github.com/AnthonyLaiuppa/gnome-terminal-colors-solarized.git 
cd gnome-terminal-colors-solarized 
./install -s 1 -p 1 --install-dircolors
cd ~/
echo 'if [ -f ~/.dir_colors/dircolors ]
    then eval `dircolors ~/.dir_colors/dircolors`
fi' >> ~/.bashrc
git clone https://github.com/altercation/vim-colors-solarized.git
cd vim-colors-solarized/colors
mv solarized.vim ~/.vim/colors/
cd ~/
echo 'set t_Co=256' >> ~/.vimrc
echo 'set background=dark' >> ~/.vimrc
echo 'colorscheme solarized' >> ~/.vimrc

echo 'export TERM=screen-256color-bce' >> ~/.bashrc

