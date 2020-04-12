#!/bin/bash

# if ansible vault file exists in home dir, and doesn't existing in ansible cfg, add it.
# then run the tag for the mod
MODULENAME=`yq -r .[].roles[-1].role cloudbox_mod.yml`
STRING="vault_password_file"
EDIT_FILE="ansible.cfg"
FIND_FILE="$HOME/.ansible_vault"

if test -f $FIND_FILE; then 
	if [ -z $(grep "$STRING" "$EDIT_FILE") ]; 
		then 
		echo "$STRING=$FIND_FILE" | tee -a $EDIT_FILE; 
	fi
fi

sudo ansible-playbook cloudbox_mod.yml --tags $MODULENAME

