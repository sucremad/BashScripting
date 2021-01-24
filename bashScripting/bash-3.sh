#! /bin/bash

#---------------------------- Loops----------------------------

##### While Loop

number=1
while [ $number -le 10 ]
do

  echo "$number"
  number=$(( number+1 ))

done

: '
A while loop will keep running as long as the test condition is true;
an until loop will keep running as long as test condition is false!
'
echo "Until Loop"

#### Until Loop

n=1

until [ $n -ge 10  ]
do

  echo "$n"
  n=$(( n+1  ))
done


#### For Loops

for ((i=0; i<10; i++))
do
  echo "Hello My Friend"
done


for i in {1..10}; do
  echo $i
done


for i in /var/* ; do
  echo $i
done


prime=(2 3 5 7 9)

for i in ${prime[@]}; do
	echo $i
done 


### break and continue

echo "Break"

for ((i=0; i<68; i++)); do
  echo $i
  if [ $i -eq 6 ]; then break; fi
done


echo "Continue"

for ((i=0; i<65; i++)); do
  if [ $i -lt 60 ]; then continue; fi
  echo $i
done

### Exercise

: '
Write a for loop to print names of all files and directories 
inside your current working directory 
along with the number of characters each file and directory name consists from

'
echo "Exercise"

: '
This is a basic one.
Just try to do it.
Do not look at the solution first!
'

































for i in $(ls); do
  echo "$i has $(echo -n $i | wc -c)"
done
