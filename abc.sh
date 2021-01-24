#!/bin/sh

i=0
while [ $i -le 3 ]; do
  for s in / - \\ \|; do
    printf "\r$s"
    sleep .1
  done
  i=$((i+1))
done
