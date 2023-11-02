#!/bin/bash +x
echo "Enter the size of array:"
read n
declare -a arr
for ((i=0; i<n; i++))
do
        ele=$(( RANDOM % 999 + 100 ))
        arr+=("$ele")
done
echo "${arr[@]}"

small=${arr[0]}
large=${arr[0]}

for ele in "${arr[@]}"
do
	if  [ $ele -ge $small ]
	then
        if [ $small -ge $ele ]
        then
                small=$ele
        fi
        if [  $large -le $ele ]
        then
                large=$ele
        fi
done
echo "$small"
echo "$large"
