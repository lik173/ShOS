#!/bin/bash
ver=1.0
dev=lik173
clear
read -p "Need to install components, continue?[y/n] " cmd
if [ $cmd = "y" ]; then
sudo apt-get install dialog
if [ $cmd = "n" ]; then
echo "Abort"
fi
fi


dialog --msgbox "Welcome to ShOS! 
It's program which using sh script and dialog



Press OK to continue" 80 90
clear
while [ "$user_input" != "exit" ]
do
user_input=$(\
  dialog --title "Command Executor" \
         --inputbox "Enter command:" 8 40 \
  3>&1 1>&2 2>&3 3>&- \
)


if [ $user_input = "list" ]; then
dialog --msgbox "list - Displays this window
ver - Displays ShOS version
exit - Exit from ShOS
info - Displays information about ShOS



" 80 90

else
if [ $user_input = "ver" ]; then
dialog --msgbox "Version $ver
" 80 90
else
if [ $user_input = "info" ]; then
dialog --msgbox "Version $ver
Author lik173
Components/Apps used
 -Display
 -gedit
 -bash

" 80 90




if [ $user_input = "exit" ]; then
clear
exit l
fi
fi
fi
fi


done


