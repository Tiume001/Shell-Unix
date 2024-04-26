#!/bin/bash


primo(){
  echo "Hello Worldddd!!!"
}

sum(){
  read -p "Insert here first number: " n1
  read -p "Insert here second number: " n2
  sum=$((n1+n2))
  echo "The sum is : $sum"
}

cycle(){
  valid=true
  count=1
  while [ $valid ]; do
	printf "%d " $count
	if [ $count -eq 5 ]; then
		echo ""
		break
	fi
	((count++))
  done
}

cycle2(){
  for (( counter=10; counter>0; counter-- )); do
	printf "%d " $counter
	if [ $counter -eq 1 ]; then 
		echo ""
	fi
  done
}

primo

#sum

cycle

cycle2
