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

#11

if [[ "$(cat /usr/share/dict/words 2>/dev/null | grep ^ich | wc -l)" == "$(cat /root/result.txt 2>/dev/null | wc -l)" ]]; then
	(( score11 += 10 ))
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
