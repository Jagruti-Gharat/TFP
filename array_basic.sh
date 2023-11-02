#!/bin/bash +x
echo "Enter the size of array:"
read n
declare -a arr
for ((i=0; i<n; i++))
do
	echo "Enter the $i element:"
	read ele
	arr+=("$ele")
done

#Display all elements of array
echo "All elements of array"
echo "${arr[@]}"
echo "${arr[*]}"

#Print the 1st element of array
echo "The first  element of array is ${arr[0]}"

#Printing the selected index element
echo "select the index from arrray:"
read ind
echo "The element present at index $ind is ${arr[$ind]}"

#printing the elements from particular index
echo "select the starting index to print the elements:"
read start_ind
echo  "The elements from the index $start_ind are ${arr[@]:$start_ind}"

#printing elements in a range
echo "Enter the start index:"
read start
echo "Enter the end index:"
read end
echo "The elements between the range $start and $end are ${arr[@]:$start:$end}"
 
