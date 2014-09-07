#!/bin/bash
#html template used by script html_make.sh to create an html file

#echo -n "Enter new title | Wait for 5 sec for default >>>"
#if read -t 5 response; then
#	title=$REPLY
#else
#	title="Untitled"
#fi

#echo -n "Enter author name | Wait 5 sec for default >>>"
#if read -t 5 response; then
#	author=$REPLY
#else
#	author=$USER
#fi

#echo -n "Enter updated on date | Wait 5 sec for default >>>"
#if read -t 5 response; then
#	date=$REPLY
#else
#	date=$(date +"%x %r %Z")
#fi

title="untitled"
author=$USER

date=$(date +"%x %r %Z")
timeStamp="Updated on $date by $author"

cat <<- _EOF_
	<DOCTYPE! html>
	<html>
	<head>
		<title>
		$title
		</title>
	</head>
	<body>
	<h1> $title</h1>
	<p>$timeStamp</p>
	</body>
	</html>
_EOF_

