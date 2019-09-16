ls -l | awk '{print}'
echo "============"

# NR（行番号）が1より大きい
ls -l | awk 'NR>1 { print $9 }'
echo "============"

# sedコマンドで一行目を削除
ls -l | sed 1d | awk '{ print $9,$10,$11 }'
echo "============"

# 1000以上のものだけ出力する
cat txtfiles/numbers.txt | awk '$1 > 1000 { print }'
echo "============"

# シンボリックリンクを抜き出す
# lrwxr-xr-x@
# lが先頭だとシンボリックリンク
# ここから抜き出す
# lrwxr-xr-x@  1 root  wheel    11  6  1 16:08 tmp@ -> private/tmp
ls -l / | awk '/^l/ { print $9 " (" $11 ")" }'
