echo "Enter Start number"
read s
echo "Enter End number"
read e
i=$s 
while [ $i -le $e ]
do
    check=`expr $i % 2 `
    if [ $check = 0 ]
    then
    evensum=`expr $evensum + $i`
    else
    echo "Odd Number is $i"
    fi
    i=`expr $i + 1`
done
echo "Sum of Even numer = $evensum"
