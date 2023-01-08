echo "! FACTORIAL !"
echo "Enter Number"
read n
temp=1
for((i=1; i<=$n; i++))
do
temp=`expr $temp \* $i`
done

echo "Factorial of $n is $temp"