#!/bin/bash

start(){
	vagrant up
	vagrant ssh
}

stop(){
	vagrant halt
}

connection(){
	vagrant ssh
}

reload(){
	vagrant reload
}

reboot(){
	vagrant halt
	vagrant up
}

remove(){
	echo " Are sure that remove the Virtual machine ? [ y ]"
	read sure
	if [[ $sure = "y" ]];then
		vagrant destroy -f
	fi
}

clear
BARR="==========================================================="
echo "$BARR"
echo " What do you want ?"
echo "$BARR"
echo "[1] Start VM & login"
echo "[2] Login to VM"
echo "[3] Stop VM"
echo "[4] Reload VM"
echo "[5] Reboot VM"
echo "[RM] Remove VM"
echo "$BARR"
echo -n " Please insert a key as you need = "
read choice
echo "$BARR"

	case $choice in
		1)
			start;;
		2)
			connection;;
		3)
			stop;;
		4)
			reload;;
		5)
			reboot;;
		RM)
			remove;;
	esac

