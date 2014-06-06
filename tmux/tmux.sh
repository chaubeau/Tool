#!/bin/sh
#by chaubeau01@gmail.com

cmd=$(which tmux) # tmux path
session=example   # session name

if [ -z $cmd ]
then
	echo "You need to install tmux."
	exit 1
fi
tmux_init()
{  
  $cmd new-window -n "term1"  -t $session sec
  $cmd new-window -n "term2" -t $session  sec
  $cmd new-window -n "term3" -t $session  sec
  $cmd new-window -n "term4" -t $session  sec
  $cmd new-window -n "term5" -t $session  sec
  $cmd selectw -t $session:2
}

$cmd has -t $session 
if [ ! $? -eq 0 ]; then
	 $cmd new -d  -s $session 
  	 tmux_init
    $cmd a -t $session
else
	$cmd a -t $session
fi

exit 0
