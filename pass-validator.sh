#! /bin/bash

read -p "please enter password:" pass
if [ ${#pass} -ge 10 ]; then echo "Great" ; exit
else echo "Error"
fi
