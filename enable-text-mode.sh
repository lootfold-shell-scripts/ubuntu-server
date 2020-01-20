#!/bin/bash

# script to enable text mode in ubuntu desktop
# edit /etc/default/grub
# GRUB_CMDLINE_LINUX_DEFAULT="text"
# GRUB_TERMINAL=console

sudo update-grub

sudo systemctl enable multi-user.target --force
sudo systemctl set-default multi-user.target
