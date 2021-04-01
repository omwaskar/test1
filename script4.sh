#!/bin/bash

echo "Enter Your System no like 0,1,2...etc."
read domain
echo "Enter Your Name"
read name

score=0
score12=0
score13=0
score14=0
score15=0
score16=0
score17=0
score18=0
score19=0

#12

if(( $(cat /etc/httpd/conf/httpd.conf | grep "Listen 18989" | wc -l)==1 ))
then
	if(( $(semanage port -l | grep "http_port_t" | grep "18989" | wc -l)==1 ))
	then
		(( score12 += 10 ))
	else
		(( score12 += 0 ))
	fi
else
	(( score12 += 0 ))
fi

#13

if(( $(lvs | grep vo1 | wc -l)==1 ))
then
	if(( $(lvs | grep vo1 | awk '{print $4}' | grep -o -P '^.{0,3}') >= 280 ))
	then	
		if(( $(lvs | grep vo1 | awk '{print $4}' | grep -o -P '^.{0,3}') <= 312 ))
		then
			(( score13 += 10 ))
		else
			(( score13 += 0 ))
		fi
	else
		(( score13 += 0 ))
	fi
else
	(( score13 += 0 ))
fi

#14

if(( $(lsblk | grep "/common/part" | awk '{print $4}' | grep "500M" | wc -l)==1 ))
then
	if(( $(cat /etc/fstab | grep "/common/part" | awk '{print $2}' | wc -l)==1 ))
	then
		if(( $(df -hT | grep "/common/part" | awk '{print $7}' | wc -l)==1 ))
		then	
			(( score14 += 10 ))
		else
			(( score14 += 0 ))
		fi
	else
		(( score14 += 0 ))
	fi
else
	(( score14 += 0 ))
fi

#15

if(( $(lsblk | grep -i -P "swap" | grep "200M" | wc -l)==1 ))
then
	if(( $(cat /etc/fstab | grep swap | awk '{print $2}' | grep swap | wc -l)>=1 ))
	then
		if(( $(cat /etc/fstab | grep swap | awk '{print $3}' | grep swap | wc -l)>=1 ))
		then
			(( score15 += 10 ))
		else
			(( score15 += 0 ))
		fi
	else
		(( score15 += 0 ))
	fi
else
	(( score15 += 0 ))
fi

#16

if(( $(vgdisplay database | grep "PE Size" | grep -o -P "16" | wc -l)==1 ))
then
	if(( $(lvdisplay database | grep "Current LE" | grep "50" | wc -l)==1 ))
	then
		if(( $(df -hT | grep "/common/classes" | grep -o -i "ext4" | wc -l)==1 ))
		then
			if(( $(cat /etc/fstab | grep "/database/datastore" | grep "/common/classes" | grep "ext4" | wc -l)==1 ))
			then
				(( score16 += 10 ))
			else
				(( score16 += 0 ))
			fi
		else
			(( score16 += 0 ))
		fi
	else
		(( score16 += 0 ))
	fi
else
	(( score16 += 0 ))
fi


(( score = score12 + score13 + score14 + score15 + score16 + score17 + score18 + score19 ))

echo "    "
echo "System no: $domain"
echo "Name: $name" 
echo "Scenario 12: $score12 Marks"
echo "Scenario 13: $score13 Marks"
echo "Scenario 14: $score14 Marks"
echo "Scenario 15: $score15 Marks"
echo "Scenario 16: $score16 Marks"
echo "Scenario 17: $score17 Marks"
echo "Scenario 18: $score18 Marks"
echo "Scenario 19: $score19 Marks"
echo "    "
echo "Total Marks: $score"
echo "    "
echo "Thank you for solving industry Scenarios."
echo "    "
