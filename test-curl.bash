#!/bin/bash

while true ;do
	curl --silent -X GET mychomjun.ddns.net:4080 |grep h1
	sleep 2
done

