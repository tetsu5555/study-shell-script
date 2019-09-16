# コマンドの出力をfileへ上書きする
ls > txtfiles/result.txt

# コマンドの出力をfileへ追記する
ls >> txtfiles/result2.txt

echo "----result2-----"
cat txtfiles/result.txt
echo "----result2-----"
cat txtfiles/result2.txt

# リダイレクションを使った使用したフィル内容のクリア
# ファイルの中身を全てクリアし、0バイトのファイルにする
echo "----ファイルの内容をクリアする-----"
> txtfiles/result.txt
: > txtfiles/result2.txt

echo "----ファイルが0バイトになっている-------"
ls -l result*
