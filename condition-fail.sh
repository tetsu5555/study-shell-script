!#/bin/bash

cat not_exist_file.txt

if [ "$?" -eq 0 ]; then
  echo "Success"
else
  echo "Failed"
fi

