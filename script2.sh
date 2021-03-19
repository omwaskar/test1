#!/bin/bash

echo "Enter Your System no like 0,1,2...etc."
read domain
echo "Enter Your Name"
read name

score1=0
score2=0
score3=0
score4=0
score5=0
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

#2
if [[ "$(yum repolist rhel -v | grep Repo-pkgs | awk '{print $3}')" > 0 ]]; then
	(( score3 += 10 ))
else
	(( score3 += 0 ))
fi

#3

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

#4

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

echo "    "
echo "System no: $domain"
echo "Name: $name" 
echo "Question 1: $score1 Marks"
echo "Question 2: $score2 Marks"
echo "Question 3: $score3 Marks"
echo "Question 4: $score4 Marks"
echo "Question 5: $score5 Marks"

