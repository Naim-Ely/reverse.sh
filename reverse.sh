#!/bin/bash
 
declare -a rev

function reverse {
	for (( x=${#array[@]} ; x>=0 ; x-- ))
  do
		    rev+=("${array[x]}")
  done
}

function main 
{
	array=($(ls $1))
	reverse
  echo ${rev[@]}
}

main $1
