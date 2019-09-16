echo "while文にリダイレクション"

while read line
do
    echo "$line"
done <$1

echo "カレントシェルにリダイレクション"

exec <$1

while read line
do
    echo "$line"
done

exit 0
