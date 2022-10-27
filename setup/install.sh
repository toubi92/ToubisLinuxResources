#!/bin/bash

# General
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Little helpers
function write_once {
	sudo grep -sqxF "$1" $2 || echo "$1" >> $2
}

# Necessary packages
sudo apt-get install -y tmux vim vifm \
    powerline \ #Skins
    locales #For proper display of tmux bars

# Customize installations
./vim/customize.sh
./tmux/customize.sh

# Init files
write_once "source $SCRIPT_DIR/vim/.vimrc" ~/.vimrc
mkdir -p ~/.vifm
write_once "source $SCRIPT_DIR/vifm/.vifmrc" ~/.vifm/vifmrc
write_once "source $SCRIPT_DIR/bash/.bashrc" ~/.bashrc
write_once "source $SCRIPT_DIR/tmux/.tmux.conf" ~/.tmux.conf
