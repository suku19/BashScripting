#!/bin/bash
clear
echo "Reading from a file.."
echo
start_time=`date +%s`
numoflines=`wc -l < ../datafiles/cities.txt`
let num_of_indicators=$((100/$numoflines))

filetoread=../datafiles/cities.txt

printf '['
while read line_from_file
do
    sleep 1
    printf '=%.0s' {$num_of_indicators}
done<$filetoread
echo '] 100%'
echo
end_time=`date +%s`
let elapsed_time=$end_time-$start_time
echo
echo "Operation completed in " $elapsed_time "seconds."