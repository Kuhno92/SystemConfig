#!/bin/bash

to_install=subl
if ! command -v $to_install &> /dev/null
then
	echo "Installing $to_install"
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text
else
	echo "Skipping $to_install"
fi

to_install=code
if ! command -v $to_install &> /dev/null
then
    echo "Installing $to_install"
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
	sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
	sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
	rm -f packages.microsoft.gpg
	sudo apt install apt-transport-https
	sudo apt update
	sudo apt install code
else
	echo "Skipping $to_install"
fi

to_install=zsh
if ! command -v $to_install &> /dev/null
then
    echo "Installing $to_install"
    sudo apt install zsh
    chsh -s $(which zsh)
    zsh
else
	echo "Skipping $to_install"
fi

DIR="~/.oh-my-zsh"
if [ ! -d "$DIR" ]; then
  echo "Installing ${DIR}"
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
	echo "Skipping ${DIR}"
fi


to_install=fuck
if ! command -v $to_install &> /dev/null
then
    echo "Installing $to_install"
    sudo apt install python3-dev python3-pip python3-setuptools
	pip3 install thefuck --user
	fuck
	fuck
else
	echo "Skipping $to_install"
fi

to_install=echo
if ! command -v $to_install &> /dev/null
then
    echo "Installing $to_install"
else
	echo "Skipping $to_install"
fi
