#!/bin/bash

ids=`docker ps -a | awk '{print $1}'`

for id in $ids
do
	echo $id
	docker rm $id
	echo "$id done"
done
