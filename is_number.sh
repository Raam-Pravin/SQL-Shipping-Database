#!/bin/bash
string=$1

if [[ $string =~ ^-?[0-9]+$ ]] && [[ $string != 00* ]] && [[ $string =~ ^[0-9]+(\.[0-9]?)? ]]; then
  echo "YES"
elif [[ $string == 0 ]]
  echo "YES"
else
  echo "NO"
fi



