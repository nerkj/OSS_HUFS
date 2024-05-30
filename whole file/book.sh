#!/bin/bash
name="$1"
num_search=$(grep "$name" ./notes/book.txt| cut -f2)
name_search=$(grep "$name" ./notes/book.txt cut -f1)
echo "번호는 $num_search"
echo "$name_search"