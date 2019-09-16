# sは文字列の置き換え
# sed s/置換対象文字列/置換後文字列/ ファイル名
sed s/orange/ORANGE/ txtfiles/sample.txt

# パイプで渡しても、↑と同じ効果を得られる
cat txtfiles/sample.txt | sed s/apple/APPLE/

# eオプションをつけることでマッチした文字全てを置き換えられる
sed -e s/apple/APPLE/g sample.txt

# 行頭、行末を置換する
sed -e "s/^apple/APPLE/" txtfiles/sample.txt
sed -e "s/apple\$/APPLE/" txtfiles/sample.txt

# 2行目を削除する
sed 2d txtfiles/sample.txt

# 置き換えた行だけを出力
# -nはpがないと出力されない
sed -n s/apple/APPLE/p txtfiles/sample.txt
