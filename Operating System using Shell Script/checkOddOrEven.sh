echo -e "\n"
echo "! ODD_EVEN !"
echo "Enter Number"
read n
echo -e "\n"

if [ `expr $n % 2` -eq 0 ]
then
echo "$n is Even Number."
else
echo "$n is Even Number."
fi