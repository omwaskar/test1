#!/bin/bash

echo "Enter Your System no like 0,1,2...etc."
read domain
echo "Enter Your Name"
read name

score=0
score6=0
score7=0
score8=0
score9=0
score10=0
score11=0

#7

if(( $(ls -l /var/tmp/ | grep -o -i fstab | wc -l)==1 ))
then
	if(( $(ls -l /var/tmp/ | grep fstab  | grep -o -i root | wc -l)>1 ))
	then
		if(( $(ls -l /var/tmp/ | grep fstab | grep -o -i x | wc -l)==0 ))
		then
			if(( $(getfacl -a -p /var/tmp/fstab | grep -o -i natasha:rwx | wc -l)==1 ))
        		then
				if(( $(getfacl -a -p /var/tmp/fstab | grep -o -i harry:--x | wc -l)==1 ))
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

(( score = score6 + score7 + score8 + score9 + score10 + score11 ))

echo "    "
echo "System no: $domain"
echo "Name: $name" 
echo "Scenario 6: $score6 Marks"
echo "Scenario 7: $score7 Marks"
echo "Scenario 8: $score8 Marks"
echo "Scenario 9: $score9 Marks"
echo "Scenario 10: $score10 Marks"
echo "Scenario 11: $score11 Marks"
echo "    "
echo "Total Marks: $score"
echo "    "
echo "Thank you for solving industry Scenarios."
echo "    "
