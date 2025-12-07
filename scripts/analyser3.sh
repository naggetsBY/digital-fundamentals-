#!/bin/bash

for i in $(ls $1)
 do
  for j in $(cat $1$i)
   do
    age=$(echo -e $j | cut -d ":" -f2) 
    if [ $age -ge 18 ]
     then teen=$((teen+1)) 
     else nonteen=$((nonteen+1))
    fi
   done
  done
  
echo "teen: $teen"
echo "nonteen: $nonteen"
