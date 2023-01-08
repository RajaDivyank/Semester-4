echo "[1] add"
echo "[2] substrect"
echo "[3] maulltipla"
echo "[4] divaid"

read ch

case $ch in
1)
echo "enter number one"
read num1
echo "enter number secound"
read num2
echo ` expr $num1 + $num2 `
;;
2)
echo "enter number one"
read num1
echo "enter number secound"
read num2
echo ` expr $num1 - $num2 `
;;
3)
echo "enter number one"
read num1
echo "enter number secound"
read num2
echo ` expr $num1 \* $num2 `
;;
4)
echo "enter number one"
read num1
echo "enter number secound"
read num2
echo ` expr $num1 / $num2 `
;;
esac
