#!/bin/sh

for i in $(ls -d ./tf*);
do
  echo $i;
  cd $i;
  if [ -d "tests" ]; then
    echo "Found tests directory"
    terraform init >/dev/null
    terraform test
    read
  fi
  cd ..
done
