echo "Enter Marks::"
echo "1. Maths:"
read m
echo "1. English:"
read e
echo "1. Hindi:"
read h
echo "1. Science:"
read s
echo "1. S.Science:"
read ss

t=`expr $m + $e + $h + $s + $ss`
per=`expr $t / 5`

if [ $t -gt 500 ]
then
echo "=================================================="
echo "Invalid Input Of Marks :("
else
echo "=================================================="
echo -e "\nTotal Marks is " $t
echo -e "\nPercentage Obtained is "$per"%"
fi
if [ $t -le 40 ]
then
echo -e "\nFAIL :("
elif [ $t -gt 40 -a $t -le 60 ]
then
echo -e "\nSecond class"
elif [ $t -gt 60 -a $t -le 70 ]
then
echo -e "\nFirst class"
else
echo -e "\nDistinction grade :)"
fi