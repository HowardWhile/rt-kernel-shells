#!/bin/bash

#還原 
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/' /etc/default/grub 

# 更新 GRUB 設定
sudo update-grub