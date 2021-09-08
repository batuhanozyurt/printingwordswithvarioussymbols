#!/bin/bash
tr 
echo "Welcome to the Calculator"
sum=0
i="y"

while [ $i = "y" ]
do
echo "Enter name"
read name
echo "enter symbol"
read symbol
txt=""
echo
for char in `echo "$name" | fold -w1`; 
do
    #echo $char
    grep -i $char -A 6 char_dict.txt | tr -d \' | head -6 | tail -5 | tr "#" $symbol
    echo
done

echo "Do you want to continue ? (Yes:y / No:n)"
read i
if [ $i != "y" ]
then
exit
fi
done
