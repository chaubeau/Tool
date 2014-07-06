#!/bin/bash
# Author: Chaubeau <chaubeau.github.io>
# Version: 1.0.0.1
# License: GPL-3.0
# Description: Manage virtualbox by command line

#your virtualbox machine name
vm_name="cust"

function start()
{  
        VBoxManage startvm $vm_name
}  


function stop()
{  
        VBoxManage controlvm $vm_name  poweroff
}

function save()
{
    
      VBoxManage controlvm $vm_name  savestate
}

function vrdp()
{
    VBoxHeadless -startvm $vm_name
}

function conn()
{
    (rdesktop   127.0.0.1:5091 >/dev/null &)

}

case "$1" in
conn)
    conn
    ;;
start)
    start
    ;;
stop)
    stop
    ;;
save)
    sleep
    ;;
vrdp)
    vrdp
    ;;
restart)
    stop
    start
    ;;
*)
    printf 'Usage: %s {start|stop|save|vrdp|conn|restart}\n' "$prog"
    exit 1
    ;;
esac

