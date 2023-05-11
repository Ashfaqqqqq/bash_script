#!/bin/bash
#purpose=to create a directory if not exits

DIR=/root/test5
if [ -d "$DIR" ];
then
    echo "$DIR directory exists."
else
	echo "$DIR directory does not exist."
mkdir -p "DIR"
echo "directory is successfully created"
fi

