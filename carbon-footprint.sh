#!/bin/bash

electricity(){
	local choice
	clear
	echo -e "Elecricity consumption depend greatly on your geolocalisation"
	echo -e ""
	echo -e "1. France	4. USA"
	echo -e "2. spain	5. China"
	echo -e "3. belgium	6. switzerland"
	read -p "Enter choice [ 1 - 6 ] " choice
	case $choice in
		1) elec_fr ;;
		2) elec_es ;;
		3) elec_be ;;
		4) elec_us ;;
		5) elec_ch ;;
		6) elec_sw ;;
		*) return
	esac
}

show_menue() {
	clear

	echo -e "1. Electricity impact"
	echo -e "2. Daily impact"
	echo -e "3. Travel impact"

}

read_options(){
	local choice
	read -p "Enter Choice [ 1 - 3 ] " choice
	case $choice in
		1) electricity ;;
		2) daily ;;
		3) travel ;;
		exit) quit ;;
		quit) quit ;;
		*) echo -e "Error..." && sleep 2
	esac
}

quit(){
	clear
	echo -e "Goodbye my lover goodbye my friend"
	exit 0
}

while true; do
	show_menue
	read_options
done
