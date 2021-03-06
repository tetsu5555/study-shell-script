#!/bin/bash

# cat の出力結果を標準エラー出力へ
if [ $# -ne 1 ]; then
    cat <<_EOT_
    1つの引数を指定してください。

    Usage: $0 param

_EOT_
    exit 1
fi

#「$」を表示したいときは「\$」のようにエスケープする
cat <<_EOT_
  ヒアドキュメント中では変数も使用できます。
  \$1 は $1 です。

_EOT_

# 終了文字をエスケープするとヒアドキュメント中の変数は展開されない
cat <<'_EOT_'
   シングルクオートで終了文字を囲むと変数は無視されます。
  \$1 は $1 です。
  `echo "コマンド置換も無視されます。"`

_EOT_

cat <<\_EOT_
  バックスラッシュでも同様です。
  \$1 は $1 です。
  `echo "コマンド置換も無視されます。"`

_EOT_

# 「<<-」とすると、ヒアドキュメント中の先頭にあるタブは無視される(スペースは無視されない)
cat <<-_EOT_
  終了文字の前に「-」を指定すると、ヒアドキュメント中の先頭のタブは無視されます。
  ←タブ
  ←タブ

_EOT_

exit 0
このシェル
