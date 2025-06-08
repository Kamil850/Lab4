#!/bin/bash


case "$1" in
if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  date
fi

  --logs|-l)
    count=${2:-100}
    for i in $(seq 1 "$count"); do
      echo "Plik: log$i.txt | Skrypt: $0 | Data: $(date)" > "log$i.txt"
    done
    echo "Utworzono $count plików logx.txt"
    ;;

 --error|-e)
    count=${2:-100}
    mkdir -p errorx
    for i in $(seq 1 "$count"); do
      echo "Plik: error$i.txt | Skrypt: $0 | Data: $(date)" > "errorx/error$i.txt"
    done
    echo "Utworzono $count plików errorx/errorx.txt"
    ;;
