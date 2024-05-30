#!/bin/bash

mon=$1
day=$2
year=$3

mon_lower=$(echo $mon | tr '[:upper:]' '[:lower:]' )
if [ $# != 3 ]
then
	echo "입력값 오류"
	exit 0
fi
case $mon_lower in
    "jan" | "january" | 1 ) mon=1 ;;
    "feb" | "february" |  2 ) mon=2 ;;
    "mar" | "march" | 3 ) mon=3 ;;
    "apr" | "april" | 4 ) mon=4 ;;
    "may" | 5 ) mon=5 ;;
    "jun" | "june" | 6 ) mon=6 ;;
    "jul" | "july" | 7 ) mon=7 ;;
    "aug" | "august" | 8 ) mon=8 ;;
    "sep" | "september" | 9 ) mon=9 ;;
    "oct" | "october" | 10 ) mon=10 ;;
    "nov" | "november" | 11 ) mon=11 ;;
    "dec" | "december" | 12 ) mon=12 ;;
    *) echo "존재하지 않는 월입니다. "+ "$1 $day $year 유효하지 않습니다."; exit 1 ;;
esac

if [ $year -lt 0 ]
then
	echo "존재하지 않는 연도입니다. "+ "$1 $day $year 유효하지 않습니다."
	exit 2
elif (($mon % 2 == 1)) && [ $day -gt 31 ]
then
	echo "존재하지 않는 일입니다. "+ "$1 $day $year 유효하지 않습니다."
	exit 3
elif (($mon % 2 == 0)) && [ $day -gt 30 ]
then
	echo "존재하지 않는 일입니다. "+ "$1 $day $year 유효하지 않습니다."
	exit 4
fi






