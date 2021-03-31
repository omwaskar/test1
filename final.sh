#!/bin/bash

echo "Enter Your System no like 0,1,2...etc."
read domain
echo "Enter Your Name"
read name

score=0
score1=0
score2=0
score3=0
score4=0
score5=0
score6=0
score7=0
score8=0
score9=0
score10=0
score11=0

#1

#domain=$((hostname) | grep -oP '(?<=alpha.domain).*(?=.example.com)')
#default_if=$(ip route list | awk '/static/ {print $5}')

if [[ $(hostname) = "alpha.domain$domain.example.com" ]]; then
	(( score1 += 10 ))
	else
	(( score1 += 0 ))
fi

default_if=$(ip route list | grep "default via 172.24.$domain.254" | awk '{print $5}')

if [[ "172.24.$domain.5" == "$(ip a | grep -o -i 172.24.$domain.5)" ]]; then
    if [[ "172.24.$domain.254" == "$(ip route | grep -i -o 172.24.$domain.254)" ]]; then
       if [[ "172.24.$domain.5/24" == "$(ip -o -f inet addr show $default_if | awk '{print $4}')" ]]; then
	   (( score2 += 10 ))
       else
           (( score2 += 0 ))
       fi
    else
        (( score2 += 0 ))
    fi
else
    (( score2 += 0 ))
fi

#3
if [[ "$(yum repolist rhel -v | grep Repo-pkgs | awk '{print $3}')" > 0 ]]; then
	(( score3 += 10 ))
else
	(( score3 += 0 ))
fi

#4

	if (cat /etc/passwd | grep -o -i natasha) >/dev/null && (cat /etc/passwd | grep -o -i harry) >/dev/null && (cat /etc/passwd | grep -o -i sarah) >/dev/null
        then
                if(( $(groups natasha | grep -o -i sysadmin | wc -l)==1 && $(groups harry | grep -o -i sysadmin | wc -l)==1 ))
                then
                        if(( $(cat /etc/passwd | grep sarah | grep -o -i /sbin/nologin | wc -l)==1 ))
                        then
				(( score4 += 10 )) 
			else
				(( score4 += 0 ))
			fi
		else
			(( score4 += 0 ))
	        fi
        else
		(( score4 += 0 ))
        fi

#5

if [[ "$(find / -user student 2>/dev/null | wc -l)" != 0 ]]; then
        if [[  "$(cat /var/liststation$domain 2>/dev/null | wc -l)" != 0 ]]; then
                if [[ "$(find / -user student 2>/dev/null | wc -l)" == "$(cat /var/liststation$domain 2>/dev/null | wc -l)" ]]; then
                        (( score5 += 10 ))
                else
                        (( score5 += 0 ))
                fi

        else
                (( score5 += 0 ))
        fi
else
        (( score5 +=0 ))
fi

#6

if(( $(crontab -u natasha -l 2>/dev/null | grep "25 06" | grep "Hello Test" | grep "/bin/echo" | wc -l)==1 ))
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


(( score = score1 + score2 + score3 + score4 + score5 + score6 + score7 + score8 + score9 + score10 + score11 ))

echo "    "
echo "System no: $domain"
echo "Name: $name" 
echo "Scenario 1: $score1 Marks"
echo "Scenario 2: $score2 Marks"
echo "Scenario 3: $score3 Marks"
echo "Scenario 4: $score4 Marks"
echo "Scenario 5: $score5 Marks"
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
