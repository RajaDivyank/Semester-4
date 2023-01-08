echo "!Find Maximum Number!"
echo "Enter Number"
read a
echo "Enter other Number"
read b
echo "Enter other Number"
read c

echo -e "\n"

if [ $a -gt $b ]
then
    if [ $a -gt $c ]
    then
    echo "$a is maximum Number."
    else
    echo "$c is maximum Number."
    fi
elif [ $b -gt $a ]
then
echo "$b is maximum Number."
else
echo "$c is maximum Number."
fi