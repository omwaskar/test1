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

if [[ "172.17.$domain.20" == "$(ip a | grep -o -i 172.17.$domain.20)" ]]; then
    if [[ "172.17.$domain.1" == "$(ip route | grep -i -o 172.17.$domain.1)" ]]; then
       if [[ "172.17.$domain.20/16" == "$(ip -o -f inet addr show $default_if | awk '{print $4}')" ]]; then
           echo "Network setup is correct"
	   (( score += 10 ))
       else
           echo "netmask is not correct"
       fi
    else
        echo "gateway is not correct"
    fi
else
    echo "Ip address is not correct"
fi

#2

	if (cat /etc/passwd | grep -o -i natasha) >/dev/null && (cat /etc/passwd | grep -o -i harry) >/dev/null && (cat /etc/passwd | grep -o -i sarah) >/dev/null
        then
                if(( $(groups natasha | grep -o -i sysadmin | wc -l)==1 && $(groups harry | grep -o -i sysadmin | wc -l)==1 ))
                then
                        if(( $(cat /etc/passwd | grep sarah | grep -o -i /sbin/nologin | wc -l)==1 ))
                        then
				echo "    "
        			echo "Name: $name" 
	        		echo "Email: $email" 
			        echo "College_Name: $college"
        	        	echo "You got a 10/10 in this task."
				(( score += 10 )) 
			else
				echo "    "
		                echo "Name: $name"
		                echo "Email: $email"
		                echo "College_Name: $college"
		                echo "You got a 0/10 in this task."
			fi
		else
        		echo "    "
	                echo "Name: $name"
	                echo "Email: $email"
        	        echo "College_Name: $college"
	                echo "You got a 0/10 in this task."
	        fi
        else
		echo "    "
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 0/10 in this task." 
        fi

echo "You got $score Marks"
