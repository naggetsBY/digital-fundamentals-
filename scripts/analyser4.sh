#!/bin/bash

min=100
infomin=""
max=-1
infomax=""
for i in $(ls $1)
do
    for string in $(cat $1$i)
    do
        age=$(echo $string | cut -d ":" -f2)
        if [[ $age -gt $max ]]
        then max=$age
            name=$(echo $string | cut -d ":" -f1)
            email=$(echo $string | cut -d ":" -f3)
            infomax=$(echo -e "Name: $name | Age: $age | Email: $email")
        fi
        if [[ $age -lt $min ]]
        then min=$age
            name=$(echo $string | cut -d ":" -f1)
            age=$(echo $string | cut -d ":" -f2)
            email=$(echo $string | cut -d ":" -f3)
            infomin=$(echo -e "Name: $name | Age: $age | Email: $email")
        fi
    done
done
echo $infomin
echo $infomax
