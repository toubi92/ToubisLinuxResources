#!/bin/bash

#Make sure locale are set (for oh-my-bash to work properly in tmux)
locale=en_US.UTF-8
sudo locale-gen $locale
sudo update-locale LANG=$locale
if [ "$?" -ne "0" ]
then
    #Failed to update locale. Probably need to generate
    sudo sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
    sudo dpkg-reconfigure --frontend=noninteractive locales
    sudo update-locale LANG=$locale
fi
