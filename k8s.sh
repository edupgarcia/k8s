#!/bin/bash

item=$(whiptail --title 'edupgarcia.ti@outlook.com Kubernetes' --menu 'Selecione o servidor Digital Ocean' --fb 12 50 3 \
'1' 'MASTER     (206.189.24.213)' \
'2' 'WORKER 1   (167.99.196.203)' \
'3' 'WORKER 2   (134.122.98.169)' 3>&1 1>&2 2>&3)

clear
echo 'Logging in...'

status=$?
if [ $status = 0 ]; then

    case $item in
        '1') ssh root@206.189.24.213;;
        '2') ssh root@167.99.196.203;;
        '3') ssh root@134.122.98.169;;
        *) echo '';;
    esac

fi
