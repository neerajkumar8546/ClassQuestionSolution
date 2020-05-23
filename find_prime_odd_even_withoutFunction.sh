#!/bin/bash -x
read -p "Enter last range : " last

for (( i=1;i<=last;i++ ))
do
	  #find even or odd number
	  if [ $(($i%2)) -eq 0 ]
      then
          array_store_even[$i]=$i
     else
         array_store_odd[$i]=$i
     fi

		#find prime number

		 flag=0
      for (( j=2;j<=$i/2;j++ ))
      do
         if [ $(($i%$j)) -eq 0 ]; then
            flag=1
            break
         fi
      done
      if [ $flag -eq 0 ]; then
         array_store_prime[$i]=$i
      fi


done


echo "Even Number are: " ${array_store_even[@]}
echo "Odd Number are: " ${array_store_odd[@]}
echo "Prime Number are: " ${array_store_prime[@]}

