#!/bin/bash
# author: Chaubeau <chaubeau.github.io>
# Version: 1.0.0.0
# License: GPL-3.0
# Description: prettify terminal add wecome banner and update PS1

cow=$(which cowsay)

if [ -z $cow ]
then
    zypper in cowsay
fi

tol=$(which toilet)

if [ -z $tol ]
then
    cd toilet-0.3 && make && make install
fi

fort=$(which fortune)

if [ -z $fort ]
then
    zypper in fortune
fi

fort_zh=$(which fortune-zh)


if [ -z $fort_zh ]
then
    cd fortune-mod-zh-1.2.2 &&  make install
fi

function user_group()
{
    user=$1
    g_user=`id $user|awk -F'gid' '{print $2}'|awk -F'(' '{print $2}'|awk -F')' '{print $1}'`
    echo "$user:$g_user"

}

for i in `ls /home/|grep -v "lost"`
do
    if [ -d /home/$i/bin ]
    then
        cp ./banner.sh /home/$i/bin/
        cp ./weath /home/$i/bin/
        cp ./jq /home/$i/bin/
    else
        mkdir /home/$i/bin
        cp ./banner.sh /home/$i/bin/
        cp ./weath /home/$i/bin/
        cp ./jq /home/$i/bin
    fi

    chmod +x /home/$i/bin/banner.sh
    chmod +x /home/$i/bin/weath
    chmod +x /home/$i/bin/jq
    chown `user_group $i` /home/$i/bin/banner.sh
    echo "/home/$i/bin/banner.sh" >> /home/$i/.bashrc
    cat ./PS1 >>/home/$i/.bashrc
done
