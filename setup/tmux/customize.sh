#!/bin/bash

#Make sure locale are set (for oh-my-bash to work properly in tmux)
locale=en_US.UTF-8
sudo locale-gen $locale
sudo update-locale LANG=$locale
sudo sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
sudo dpkg-reconfigure --frontend=noninteractive locales
sudo update-locale LANG=$locale

#Need that variable to properly display powerline in tmux
alias tmux='LC_ALL=en_US.UTF-8 tmux'
