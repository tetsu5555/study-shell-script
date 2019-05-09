#!/bin/sh

NOW=`date "+%Y/%m/%d %H:%M:%S"`

# 変数展開を使う
cat <<EOF
Now is $NOW
EOF

# 変数展開を使わない
cat <<"EOF"
Now is $NOW
EOF
