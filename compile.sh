#!/bin/sh

if [ $# -ne 2 ]
then
	echo "Arguments are invalid!"
	exit 1
else
	echo "Ready to compile file" $1 ", the output file is" $2
	gcc $1 -m32 -g -fno-stack-protector -z execstack -O0 -o $2 -w
fi
