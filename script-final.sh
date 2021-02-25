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

        echo "$name" > task.txt
        echo "$email" >> task.txt
        echo "$college" >> task.txt
        ls -l /rhel | grep workshop >> task.txt
        cat /rhel/workshop >> task.txt

        if (ls -l /rhel | grep workshop)
        then
                echo "You got a 10/10 in this task." >> task.txt
        else
                echo "sorry you got a 0/10 in this task." >> task.txt
        fi

        echo "welcome to rhel8-workshop" >> ./rhel8-workshop
        openssl aes-256-cbc -pass file:"./rhel8-workshop" -a -salt -in ./task.txt -out ./task1.txt

        rm -rf ./rhel8-workshop
        rm -rf ./task.txt

elif [ $tsk = 2 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        echo "$name" > task.txt
        echo "$email" >> task.txt
        echo "$college" >> task.txt
        cat /etc/passwd | grep rhel8 >> task.txt

        if (cat /etc/passwd | grep rhel8)
        then
                echo "You got a 10/10 in this task." >> task.txt
        else
                echo "You got a 0/10 in this task." >> task.txt
        fi

        echo "welcome to rhel8-workshop" >> ./rhel8-workshop
        openssl aes-256-cbc -pass file:"./rhel8-workshop" -a -salt -in ./task.txt -out ./task2.txt

        rm -rf ./rhel8-workshop
        rm -rf ./task.txt

elif [ $tsk = 3 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        echo "$name" > task.txt
        echo "$email" >> task.txt
        echo "$college" >> task.txt
        df -hT >> task.txt

        if (df -hT | grep /tmp)
        then
                echo "You got a 10/10 in this task." >> task.txt
        else
                echo "You got 0/10 in this task" >> task.txt
        fi
        echo "welcome to rhel8-workshop" >> ./rhel8-workshop
        openssl aes-256-cbc -pass file:"./rhel8-workshop" -a -salt -in ./task.txt -out ./task3.txt

        rm -rf ./rhel8-workshop
        rm -rf ./task.txt

elif [ $tsk = 4 ];
then
        echo "Enter Your Name"
        read name
        echo "Enter Your Mail ID"
        read mail
        echo "Enter Your College Name"
        read college

        echo "$name" > task.txt
        echo "$email" >> task.txt
        echo "$college" >> task.txt
        hostname >> task.txt

        if [ $(hostname) = "rhel8.example.com" ];
        then
                echo "You got a 10/10 in this task." >> task.txt
        else
                echo "You got 0/10 in this task" >> task.txt
        fi

        echo "welcome to rhel8-workshop" >> ./rhel8-workshop
        openssl aes-256-cbc -pass file:"./rhel8-workshop" -a -salt -in ./task.txt -out ./task4.txt

        rm -rf ./rhel8-workshop
        rm -rf ./task.txt

elif [ $tsk = 5 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        echo "$name" > task.txt
        echo "$email" >> task.txt
        echo "$college" >> task.txt
        cat /etc/motd >> task.txt

        if (cat /etc/motd | grep WELCOME)
        then
                echo "You got a 10/10 in this task." >> task.txt
        else
                echo "You got a 0/10 in this task." >> task.txt
        fi

        echo "welcome to rhel8-workshop" >> ./rhel8-workshop
        openssl aes-256-cbc -pass file:"./rhel8-workshop" -a -salt -in ./task.txt -out ./task5.txt

        rm -rf ./rhel8-workshop
        rm -rf ./task.txt

elif [ $tsk = 6 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        echo "$name" > task.txt
        echo "$email" >> task.txt
        echo "$college" >> task.txt
        ip a >> task.txt

        if (ip a | grep 192.168.108.192/24)
        then
                echo "You got a 10/10 in this task." >> task.txt
        else
                echo "You got 0/10 in this task" >> task.txt
        fi

        echo "welcome to rhel8-workshop" >> ./rhel8-workshop
        openssl aes-256-cbc -pass file:"./rhel8-workshop" -a -salt -in ./task.txt -out ./task6.txt

        rm -rf ./rhel8-workshop
        rm -rf ./task.txt

elif [ $tsk = 7 ];
then
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        echo "$name" > task.txt
        echo "$email" >> task.txt
        echo "$college" >> task.txt

        SERVICE="httpd"
        if pgrep -x "$SERVICE" >/dev/null
        then
                echo "You got a 10/10 in this task." >> task.txt
        else
                echo "you got a 0/10 in this task" >> task.txt
        fi

        echo "welcome to rhel8-workshop" >> ./rhel8-workshop
        openssl aes-256-cbc -pass file:"./rhel8-workshop" -a -salt -in ./task.txt -out ./task7.txt

        rm -rf ./rhel8-workshop
        rm -rf ./task.txt

else
        echo "This is not valid task"
        sh run.sh
fi
