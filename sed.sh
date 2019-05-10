# sed s/置換対象文字列/置換後文字列/ ファイル名
sed s/orange/ORANGE/ sample.txt

# パイプで渡しても、↑と同じ効果を得られる
cat sample.txt | sed s/apple/APPLE/

# eオプションをつけることでマッチした文字全てを置き換えられる
sed -e s/apple/APPLE/g sample.txt

# 行頭、行末を置換する
sed -e "s/^apple/APPLE/" sample.txt
sed -e "s/apple\$/APPLE/" sample.txt
