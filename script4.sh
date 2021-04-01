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
	if(( $(cat /etc/fstab | grep swap | awk '{print $2}' | grep swap | wc -l)==1 ))
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


if(( $(crontab -u natasha -l | grep "25 06" | grep -oi "/bin/echo Hello Test" | wc -l)==1 ))
then
	(( score6 += 10 ))
else
	(( score6 += 0 ))
fi


#7

if(( $(ls -l /var/tmp/ | grep -o -i fstab | wc -l)==1 ))
then
	if(( $(ls -l /var/tmp/ | grep fstab  | grep -o -i root | wc -l)>1 ))
	then
		if(( $(ls -l /var/tmp/ | grep fstab | grep -o -i x | wc -l)==0 ))
		then
			if(( $(getfacl -a -p /var/tmp/fstab | grep -o -i natasha:rw- | wc -l)==1 ))
        		then
				if(( $(getfacl -a -p /var/tmp/fstab | grep -o -i harry:--- | wc -l)==1 ))
                        	then
					if(( $(ls -l /var/tmp/ | grep fstab | grep -o -i r | wc -l)>=6 ))
                			then
					        (( score7 += 10 ))
                		        else
                                		(( score7 += 0 ))
                        		fi
				else
					(( score7 += 0 ))
				fi
			else
				(( score7 += 0 ))
			fi
		else
			(( score7 += 0 ))
		fi
	else
		(( score7 += 0 ))
	fi
else
(( score7 += 0 ))
fi

#8

if(( $(cat /etc/chrony.conf | grep "server classroom.example.com iburst" | wc -l)==1 ))
then
        (( score8 += 10 ))
else
        (( score8 += 0 ))
fi

#9

if (cat /etc/passwd | grep -o -i station$domain) >/dev/null
then
	 if(( $(cat /etc/passwd | grep station$domain | grep -oP '(?<=:x:).*(?=::)' | grep ^1088 | grep -oP '.*(?=:)' | wc -l)==1 ))
         then
		if(( $(cat /etc/passwd | grep station$domain | grep -o -i /sbin/nologin | wc -l)==1 ))
                then
			(( score9 += 10 )) 
		else
			(( score9 += 0 ))
		fi
	else
		(( score9 += 0 ))
        fi
else
	(( score9 += 0 ))
fi

#10

if [[ "$(find /usr/local/ 2>/dev/null | grep ^/usr/local | wc -l)" == "$(tar -tf /my_backup.tar.gz 2>/dev/null | wc -l)" ]]; then
	if [[ "$(tar -tf /my_backup.tar.gz 2>/dev/null | grep ^usr/local | wc -l)" == "$(tar -tf /my_backup.tar.gz 2>/dev/null | wc -l)" ]]; then
		(( score10 += 10 ))
	else
		(( score10 += 0 ))
	fi
else
	(( score10 += 0 ))
fi

#11

if [[ "$(cat /usr/share/dict/words 2>/dev/null | wc -l)" != 0 ]]; then
	 if [[  "$(cat /root/result.txt 2>/dev/null | wc -l)" != 0 ]]; then
		if [[ "$(cat /usr/share/dict/words 2>/dev/null | grep ^ich | wc -l)" == "$(cat /root/result.txt 2>/dev/null | wc -l)" ]]; then
			if [[ "$(cat /root/result.txt 2>/dev/null | grep ^ich | wc -l)" == "$(cat /root/result.txt 2>/dev/null | wc -l)" ]]; then
				(( score11 += 10 ))
			else
				(( score11 += 0 ))
			fi
		else
			(( score11 += 0 ))
		fi
	else
		(( score11 += 0 ))
	fi
else
	(( score11 += 0 ))
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
