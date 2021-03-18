#!/bin/bash

echo "Enter Your Name"
read name
echo "Enter Your Mail ID"
read mail
echo "Enter Your College Name"
read college
score=0

#1

domain=$((hostname) | grep -oP '(?<=alpha.domain).*(?=.example.com)')
default_if=$(ip route list | awk '/^default/ {print $5}')

if [[ "172.24.$domain.5" == "$(ip a | grep -o -i 172.24.$domain.5)" ]]; then
    if [[ "172.24.$domain.254" == "$(ip route | grep -i -o 172.24.$domain.254)" ]]; then
       if [[ "172.24.$domain.5/24" == "$(ip -o -f inet addr show $default_if | awk '{print $4}')" ]]; then
	   (( score += 10 ))
       else
           (( score += 0 ))
       fi
    else
        (( score += 0 ))
    fi
else
    (( score += 0 ))
fi

#2

	if (cat /etc/passwd | grep -o -i natasha) >/dev/null && (cat /etc/passwd | grep -o -i harry) >/dev/null && (cat /etc/passwd | grep -o -i sarah) >/dev/null
        then
                if(( $(groups natasha | grep -o -i sysadmin | wc -l)==1 && $(groups harry | grep -o -i sysadmin | wc -l)==1 ))
                then
                        if(( $(cat /etc/passwd | grep sarah | grep -o -i /sbin/nologin | wc -l)==1 ))
                        then
				(( score += 10 )) 
			else
				(( score += 0 ))
			fi
		else
			(( score += 0 ))
	        fi
        else
		(( score += 0 ))
        fi

echo "    "
echo "Name: $name" 
echo "Email: $mail" 
echo "College_Name: $college"
echo "You got $score Marks"
