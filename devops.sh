#!/bin/bash 


while read LINE
do

        ID=$(echo "${LINE}" | awk '{print $3}')
	NUM_REGEX='[0-9]'
	EMAIL=$(echo ${LINE} | awk '{print $2}')
        EMAIL_REGEX='^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,3}$'

        if  [[ ${ID} =~ ${NUM_REGEX} ]] && [[ ${ID} -ne " " ]] && [[ ${EMAIL} =~ ${EMAIL_REGEX} ]]
        then
               
        
                if [ $((ID%2)) -eq 0 ]
                then
                        echo "the ID ${ID} of EMAIL ${EMAIL} is Even Number."
		else 
			echo "the ID ${ID} of EMAIL ${EMAIL} is Odd Number."
                fi
	else 
		continue
        fi


done < /root/Task/DevOps-Task
