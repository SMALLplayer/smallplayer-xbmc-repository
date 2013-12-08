#!/bin/bash

for i in $(find . -name '*py' -or -name '*pyo' -or -name '*xml');
do
  sed -i s/$1/$2/ $i
done
