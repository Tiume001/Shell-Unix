#!/bin/bash
# Exercises on bash

print_numbers() {
  local i=1  # create local variable
  local limit=50
  while [ $i -le $limit ]  # go until the value of i is more than 100
  do
    printf "%s " "$i"
    # shellcheck disable=SC2004
    ((i = $i + 2))
  done
  # shellcheck disable=SC2028
  printf "\n"
}


getCurrentDate() {  #prints the current date "limit" times
  local count=0
  local limit=5
  while true
  do
    (count++)
    date;
    sleep 1
    if [ "$count" -eq $limit ]; then
      break
    fi
  done
}

printFileWeight() {
  # shellcheck disable=SC2045
  for i in $(ls -1);
  do
    du -hs "$i";
  done;
}

chooseLetter() {
  # shellcheck disable=SC2154
  case $1 in
    'D') date;;
    'W') who;;
    'L') find . -maxdepth 1 -exec ls -l {} + | more;; # we could use also :  'L') ls -l | more;;
    'P') pwd;;
    *)
  echo 'D = current date'
  echo 'W = connected users'
  echo 'L = file list'
  echo 'P = current directory';;
  esac
}