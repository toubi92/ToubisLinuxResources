#!/bin/bash

#Make sure locale are set (for oh-my-bash to work properly in tmux)
locale=en_US.UTF-8
sudo locale-gen $locale
sudo update-locale LANG=$locale
