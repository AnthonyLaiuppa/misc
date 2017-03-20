#!/bin/bash

sudo apt-get update; sudo apt-get upgrade -y
sudo apt-get install -y vim
sudo apt-get install -y python-pip
sudo apt-get install -y nodejs
sudo apt-get install -y python-dev
sudo apt-get install -y python3-dev
sudo apt-get install -y npm
sudo apt-get install -y mongodb-org
sudo apt-get install -y nodejs-legacy
sudo pip install virtualenv
sudo pip install virtualenvwrapper


echo 'export PIP_REQUIRE_VIRTUALENV=true' > ~/.bash_profile
echo 'export WORKON_HOME="~/.envs"' >> ~/.bash_profile
echo 'if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then . /usr/local/bin/virtualenvwrapper.sh; fi' >> ~/.bash_profile
echo 'alias mkvenv="mkvirtualenv"' >> ~/.bash_profile
echo 'alias mkvenv3="mkvirtualenv -p python3"' >> ~/.bash_profile
echo 'alias rmvenv="rmvirtualenv"' >> ~/.bash_profile
echo 'alias lsvenv="lsvirtualenv"' >> ~/.bash_profile

source ~/.bash_profile
