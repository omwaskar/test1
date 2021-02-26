#/bin/bash

echo "Enter Task no"
read tsk

if [ $tsk = 1 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        if (ls -l /rhel | grep workshop)
        then
        	echo "Name: $name" 
	        echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "sorry you got a 0/10 in this task." 
        fi

 elif [ $tsk = 2 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

	if (cat /etc/passwd | grep rhel8)
        then
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 0/10 in this task." 
        fi

elif [ $tsk = 3 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        if (df -hT | grep /tmp)
        then
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got 0/10 in this task" 
        fi

elif [ $tsk = 4 ];
then
        echo "Enter Your Name"
        read name
        echo "Enter Your Mail ID"
        read mail
        echo "Enter Your College Name"
        read college

        if [ $(hostname) = "rhel8.example.com" ];
        then
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
        	echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got 0/10 in this task" 
        fi

elif [ $tsk = 5 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        if (cat /etc/motd | grep WELCOME)
        then
	        echo "Name: $name" 
	        echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
	        echo "Name: $name" 
	        echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 0/10 in this task." 
        fi

elif [ $tsk = 6 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        if (ip a | grep 192.168.108.192/24)
        then
        	echo "Name: $name" 
	        echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
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

        SERVICE="httpd"
        if pgrep -x "$SERVICE" >/dev/null
        then
		echo "Name: $name" 
        	echo "Email: $email" 
	        echo "College_Name: $college"
                echo "You got a 10/10 in this task." 
        else
	        echo "Name: $name" 
	        echo "Email: $email" 
	        echo "College_Name: $college"
                echo "you got a 0/10 in this task" 
        fi

else
        echo "This is not valid task"
        sh run.sh
fi
