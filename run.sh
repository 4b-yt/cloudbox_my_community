#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)
italic=$(tput sitm)


(
	flock -n -e 200
	if [ $? -eq 1 ]; then
		echo "Already running?"
		exit;
	fi

	if [ -z $1 ]; then
		echo "${bold}Tags:${normal}" `yq -r .[].roles[].role cloudbox_mod.yml`
		echo "${bold}Example:${normal} ${italic}bash run.sh wallabag"
		echo "${normal}"
	else 

		# if ansible vault file exists in home dir, and doesn't existing in ansible cfg, add it.
		# then run the tag for the mod
		STRING="vault_password_file"
		EDIT_FILE="ansible.cfg"
		FIND_FILE="$HOME/.ansible_vault"
		
		
		if test -f $FIND_FILE; then 
			if [ -z $(grep "$STRING" "$EDIT_FILE") ]; 
				then
				echo "$STRING=$FIND_FILE" | tee -a $EDIT_FILE; 
			fi
		fi

		sudo ansible-playbook cloudbox_mod.yml --tags $1
	fi
	

) 200>.run.sh

