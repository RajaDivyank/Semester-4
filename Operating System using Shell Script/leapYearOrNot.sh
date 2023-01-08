echo -e "\n"
echo "Enter Year : "
read n

echo -e "\n"
if [ `expr $n % 400` -eq 0 -o `expr $n % 4` -eq 0 -a `expr $n % 100` -ne 0  ]
then
echo "$n is Leap Year"
else
echo "$n is Not a Leap Year"
fi