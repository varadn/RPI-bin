function pitemp {
/opt/vc/bin/vcgenmd measure_temp
}
function atharva {
echo "what are you trying to do atharva!"
echo "press enter to delete all data from RPI-linux system..."
sleep 1
echo "input not valid ..."
sleep 1 
echo "reflashing..."
sleep 5
echo "/home folder delete"
sleep 2
echo "/sys loadout deleted"
sleep 2
echo "kernel delete"
sleep 4
echo "sys wiped"
sleep 1
echo "crashed..."
screensaver
}
function picamusage {
sudo raspistill 2>&1 | less
}

function testimg {
sudo raspistill -hf -vf -o testimg.jpg
}

function screensaver {
. ~/Git/bin/RPI-bin/fakecomputation.sh

}
alias getpage="lynx http://192.168.1.18"
function logIn {
	echo "..." >> /home/pi/.log.txt
	echo "Login" >> /home/pi/.log.txt
	date >> /home/pi/.log.txt
	echo "..." >> /home/pi/.log.txt
	echo " " >> /home/pi/.log.txt
}
function shutoff {
	echo "..." >> /home/pi/.log.txt
	echo "Shutdown" >> /home/pi/.log.txt
	date >> /home/pi/.log.txt
	echo "..." >> /home/pi/.log.txt
	echo " " >> /home/pi/.log.txt
	sudo poweroff	
}

alias l="ls -l"
alias la="ls -a"

function Date {
	echo "the date is:"
	date +"%A, %B %-d, %Y"
}

function Update {
	echo "..." >> /home/pi/.log.txt
	echo "Update" >> /home/pi/.log.txt
	date >> /home/pi/.log.txt
	echo "..." >> /home/pi/.log.txt
	echo " " >> /home/pi/.log.txt
	sudo rpi-update
	sudo apt-get update 
	sudo apt-get upgrade
	sudo apt-get dist-upgrade
}
function GUI {
	echo "..." >> /home/pi/.log.txt
	echo "GUI start" >> /home/pi/.log.txt
	date >> /home/pi/.log.txt
	echo "..." >> /home/pi/.log.txt
	echo " " >> /home/pi/.log.txt
	startx
	echo "..." >> /home/pi/.log.txt
	echo "GUI stop" >> /home/pi/.log.txt
	date >> /home/pi/.log.txt
	echo "..." >> /home/pi/.log.txt
	echo " " >> /home/pi/.log.txt
}

function Minecraft {
	cd mcpi
	./minecraft-pi
	cd /home/pi
}
alias s="sudo su"

function Reboot {
	echo "..." >> /home/pi/.log.txt
	echo "Reboot" >> /home/pi/.log.txt
	date >> /home/pi/.log.txt
	echo "..." >> /home/pi/.log.txt
	echo " " >> /home/pi/.log.txt
	sudo reboot
}
