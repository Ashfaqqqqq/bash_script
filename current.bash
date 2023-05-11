#!/bin/bash

NOW=$(date +"%a")
case $NOW in
	Wed)	
		echo "Full backup";;
	Mon|Tue|Thu|Fri)
		echo "Partial backup";;
	Sat|Sun)	
		echo "No backup";;
	*) ;;
esac

