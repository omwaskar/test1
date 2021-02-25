#!/bin/bash

echo "Enter Task no." 
read tsk
info(){
	echo "Enter Your Name"
	read name
	echo "Enter Your Mail ID"
	read email
	echo "Enter Your College Name"
	read college

	echo "Name:$name" > task.txt
	echo "Email:$email" >> task.txt
	echo "College_Name:$college" >> task.txt
}

tone(){
	info
	ls -l /rhel | grep workshop >> task.txt
	cat /rhel/workshop >> task.txt
	
	if ( ls -l /rhel | grep workshop )
	then
		echo "You got a 10/10 in this task."
		echo "you got a 10/10 in this task." >> task.txt
	else
		echo "you got a 0/10 in this task."
		echo "you got a 0/10 in this task." >> task.txt
	fi

	echo "Welcome to rhel8-workshop" >> rhel8-workshop
	openssl aes-256-cbc -pass file:"./rhel8-workshop" -a -salt -in ./task.txt -out ./task1.txt

	rm -rf rhel8-workshop
	rm -rf task.txt
}

if [ $tsk = 1 ];
then
	tone
else
	echo "You enter wrong no"
fi
