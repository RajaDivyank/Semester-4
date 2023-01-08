echo "!Find Maximum Number!"
echo "Enter Number"
read a
echo "Enter other Number"
read b
echo -e "\n"

if [ $a -gt $b ]
then
echo "$a is maximum Number."
else
echo "$b is maximum Number."
fi