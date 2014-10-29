# ~/.bash_logout: executed by bash(1) when login shell exits.

if [ "$SHLVL" = 1 ]; then
	echo "export HIGHSCORE=$HIGHSCORE" > /home/pi/.store_highscore.sh

	echo "..." >> /home/pi/.log.txt
	echo "Logoff" >>  /home/pi/.log.txt
	date >>  /home/pi/.log.txt
	echo "..." >>  /home/pi/.log.txt
	echo " " >>  /home/pi/.log.txt

	rm -f /home/pi/testimg.jpg
	[ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi
