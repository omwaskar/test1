#/bin/bash

echo "Enter exercise no"
read tsk

if [ $tsk = 2 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

	if(( $(ls -l /var/tmp/ | grep passwd | grep -o -i root | wc -l)>1 ))
	then
		if(( $(ls -l /var/tmp/ | grep passwd | grep -o -i x | wc -l)==0 ))
		then
			if (ls -l /var/tmp/ | grep -o -i passwd) >/dev/null
        		then
                                echo "    "
                                echo "Name: $name"
                                echo "Email: $email"
                                echo "College_Name: $college"
                                echo "You got a 10/10 in this task."
                        else
                                echo "    "
                                echo "Name: $name"
                                echo "Email: $email"
                                echo "College_Name: $college"
                                echo "you got a 0/10 in this task."
                        fi
                else
                        echo "    "
                        echo "Name: $name"
                        echo "Email: $email"
                        echo "College_Name: $college"
                        echo "you got a 0/10 in this task."
                fi
        else
		echo "    "
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "you got a 0/10 in this task." 
        fi

 elif [ $tsk = 4 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

	if (cat /etc/passwd | grep -o -i rhel8) >/dev/null && (cat /etc/passwd | grep -o -i rhel7) >/dev/null
        then
                if(( $(groups rhel8 | grep -o -i workshop | wc -l)==1 ))
                then
                        if(( $(cat /etc/passwd | grep rhel7 | grep -o -i /sbin/nologin | wc -l)==1 ))
                        then
				echo "    "
        			echo "Name: $name" 
	        		echo "Email: $email" 
			        echo "College_Name: $college"
        	        	echo "You got a 10/10 in this task." 
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

elif [ $tsk = 5 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        if(( $(df -hT | grep -o -i /tmp | wc -l)==1 )) >/dev/null
        then
		if(( $(df -hT | grep /tmp | grep -o -i xfs | wc -l)==1 ))
		then
			echo "    "
        		echo "Name: $name" 
        		echo "Email: $email" 
	        	echo "College_Name: $college"
                	echo "You got a 10/10 in this task." 
		else
			echo "    "
        		echo "Name: $name" 
        		echo "Email: $email" 
	        	echo "College_Name: $college"
                	echo "You got 0/10 in this task"
		fi
        else
		echo "    "
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got 0/10 in this task" 
        fi

elif [ $tsk = 6 ];
then
        echo "Enter Your Name"
        read name
        echo "Enter Your Mail ID"
        read mail
        echo "Enter Your College Name"
        read college

        if [ $(hostname) = "rhel8.example.com" ];
        then
		echo "    "
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
		echo "    "
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got 0/10 in this task" 
        fi

elif [ $tsk = 7 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        if (grep -rw '/etc/motd' -e 'WELCOME TO RHEL8 WORKSHOP') >/dev/null
        then
		echo "    "
	        echo "Name: $name" 
	        echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
		echo "    "
	        echo "Name: $name" 
	        echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 0/10 in this task." 
        fi

elif [ $tsk = 8 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        if (ip a | grep 192.168.108.192/24) >/dev/null
        then
		echo "    "
        	echo "Name: $name" 
	        echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
		echo "    "
	        echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got 0/10 in this task" 
        fi

elif [ $tsk = 9 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        SERVICE="httpd"
        if pgrep -x "$SERVICE" >/dev/null
        then
		echo "    "
		echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
		echo "    "
	        echo "Name: $name" 
	        echo "Email: $email" 
	        echo "College_Name: $college"
                echo "you got a 0/10 in this task" 
        fi

else
	echo "    "
        echo "This is not valid Exercise no"
	echo "Please enter valid Exercise no like 2, 4, 5, 6, 7, 8, 9 ..."
        sh rhel8.sh
fi
