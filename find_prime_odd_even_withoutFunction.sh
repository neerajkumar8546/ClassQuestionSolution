#!/bin/bash -x
read -p "Enter last range : " last

sumevennum=0
sumoddnum=0
sumprimenum=0

for (( i=1;i<=last;i++ ))
do
	  #find even or odd number
	  if [ $(($i%2)) -eq 0 ]
      then
          array_store_even[$i]=$i
			sumevennum=$(($sumevennum+$i))
     else
         array_store_odd[$i]=$i
			sumoddnum=$(($sumoddnum+$i))
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
			sumprimenum=$(($sumprimenum+$i))
      fi
done

printf "\n"
echo "1:- Even Number are between 1 to $last : " ${array_store_even[@]}
printf "\n"

EvenAvg=$(($sumevennum / ${#array_store_even[@]}))
echo "Average Of Even num are : "$EvenAvg
printf "\n"

echo "2:- Odd Number are between 1 to $last : " ${array_store_odd[@]}
printf "\n"

OddAvg=$(($sumoddnum / ${#array_store_odd[@]}))
echo "Average Of Odd num are : "$OddAvg
printf "\n"

echo "3:- Prime Number are between 1 to $last : " ${array_store_prime[@]}
printf "\n"

PrimeAvg=$(($sumprimenum / ${#array_store_prime[@]}))
echo "Average Of Even num are : "$PrimeAvg
printf "\n"

