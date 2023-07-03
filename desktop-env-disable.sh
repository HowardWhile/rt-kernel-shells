#!/bin/bash
sudo systemctl set-default multi-user.target

read -p "do you want to reboot now?(Y/N): " choice
if [[ $choice == "Y" || $choice == "y" ]]; then
    sudo reboot
else
    echo "Re boot instructions have been canceled"
fi