#!/bin/bash
# author: Chaubeau <chaubeau.github.io>
# Version: 1.0.0.0
# License: GPL-3.0
# Description:  wecome banner in terminal

a=$((`date +%s`%3))
b=$((`date +%s`%53))


if [ $b -eq 0 ]
then
        cal
        exit 0
fi

cow=$(which cowsay)

ann=`$cow -l|grep -v "Cow files"|sed 's/ /\n/g'|sed -n "${b}p"`
case $a in
   0)
        /usr/bin/fortune-zh |$cow -f $ann
        ;;
   1)
        /usr/local/bin/toilet -f mono9 -F gay "Hello SUSE"
        ;;
   2)
        /usr/bin/fortune|$cow -f $ann
        ;;
esac


