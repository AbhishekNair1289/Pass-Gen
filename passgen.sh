#!/bin/bash

echo " "


echo -e "\e[32m"
echo "*************************************************************************"
echo "*           ____          ____  ____       ____      ____               *"
echo "*          |    |  /\    |     |          /    \    |      |\   |       *"
echo "*          | ___| /  \   |____ |____     |    ___   |____  | \  |       *"
echo "*          |     / -- \       |     |    |    \  |  |      |  \ |       *"
echo "*          |    /      \  ____| ____|     \___/  |  |____  |   \|       *"
echo "*                                                                       *"
echo "*                            Passeord Genenator                         *"
echo "*                                                                       *"
echo "*====================== Created By Abhishek A Nair =====================*"
echo "*                                                                       *" 
echo "*************************************************************************"
echo " "
echo " "
echo " "

declare -i len=10
#declare -l valid="[:alnum:]"
declare -l valid="[:lower:][:upper:][:digit:][:punct:]"


while [[ -n "$1" ]]; do
	case "$1" in
		-h|--help)
			echo "\
Usage: passgen.sh [-l LENGTH] [-v VALID]

	LENGTH is any integer greater than 0
        VALID is pattern for valid characters, e.g. 
		'[:alnum:]' for alpha numeric valuies only
		'[:alpha:]-_' for alpha character only
		'[:lower:]' for lowercase letters only
		'[:upper:]' for uppercase letters only
		'[:digit:]' for numbers only
		'[:punct:]' for special characters only
        
	Example :- ./passgen.sh -l 20 -v [:alnum:][:punct:]"
			exit;;
		-v|--valid)
			valid="$2";;
		-l|--length)
			if (( "$2" > 0 )); then
				len="$2"
			else
				echo "LENGTH must be integer greater than 0"
				exit
			fi;;
	esac
	shift
done

echo "Generated Password : "
tr -dc "$valid" < /dev/random | head -c $len
echo 
