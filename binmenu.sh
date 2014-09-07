#!/bin/bash

e=0
check=0

while [ "$e" -eq "$check" ]

do
x=20
y=85

#clears screen
clear
tput clear


#set up cursor
tput cup $x $y

#set color
tput setaf 3

#title
echo "BIN"
tput sgr0

#menu
tput rev
tput cup $((x+2)) $((y+2))
echo "Script-Menu"

tput sgr0
tput setaf 1

tput cup $((x+4)) $y
echo "1. fakecomputation.sh"
tput cup $((x+5)) $y
echo "2. guess_my_num.sh"
tput cup $((x+6)) $y
echo "3. hello_audio.sh"
tput cup $((x+7)) $y
echo "4. hello_raspbian.sh"
tput cup $((x+8)) $y
echo "5. hello_world.sh"
tput cup $((x+9)) $y
echo "6. html_make.sh"
tput cup $((x+10)) $y
echo "7. time_conv.sh"
tput cup $((x+11)) $y
echo "8. piglatin.sh (req input)"
tput cup $((x+12)) $y
echo "9. pospartest.sh (req input)"
tput cup $((x+13)) $y
echo "10. str_rev.sh (req input)"
tput cup $((x+14)) $y
echo "11. testanimation.sh"

#tput bold
tput cup $((x+15)) $y

read -p "Enter your choice (1-10) >>> " choice

tput clear
tput sgr0
tput rc
clear

case "$choice" in

1). ~/Git/bin/RPI-bin/fakecomputation.sh
;;
2). ~/Git/bin/RPI-bin/guess_my_num.sh
;;
3). ~/Git/bin/RPI-bin/hello_audio.sh
;;
4). ~/Git/bin/RPI-bin/hello_rasbian.sh
;;
5). ~/Git/bin/RPI-bin/hello_world.sh
;;
6). ~/Git/bin/RPI-bin/html_make.sh
;;
7) . ~/Git/bin/RPI-bin/time_conv.sh
;;
8)
read -p "Enter req input >>> " i
clear
. ~/Git/bin/RPI-bin/piglatin.sh $i
;;
9)
read -p "Enter req input >>> " i
clear
. ~/Git/bin/RPI-bin/pospartest.sh $i
;;
10)
read -p "Enter req input >>> " i
clear
. ~/Git/bin/RPI-bin/str_rev.sh $i
;;
11)
. ~/Git/bin/RPI-bin/testanimation.sh
;;
quit) clear
e=1
;;
*) echo "error"
;;
esac

case "$choice" in
quit)  echo " "
;;
* ) echo " "
read -p "Enter anything to continue " useless
;;
esac 
done