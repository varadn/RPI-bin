#!/bin/bash

#builds an html file using template from html_tplate.sh

echo -n "Enter filename (.html will be added automatically) | Wait 5 sec for default"
if read -t 5 response; then
	fileloc=/home/pi/Documents/$REPLY.html
else
	fileloc=/home/pi/Documents/untitled.html
fi

html_tplate.sh > $fileloc

echo "Your html file is located at $fileloc"
