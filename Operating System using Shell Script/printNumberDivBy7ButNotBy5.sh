echo "Enter Start number"
read s
echo "Enter End number"
read e
i=$s
while [ $i -le $e ]
do
    div=`expr $i % 7`
    notdiv=`expr $i % 5`
    if [ $div = 0 -a $notdiv != 0 ]
    then
    echo "Number Divide by 7 but not by 5 between $s to $e = $i"
    fi
    i=`expr $i + 1`
done