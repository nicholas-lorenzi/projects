#!/bin/bash

# Define variables

BAM="/tmp/mooqita.proj"
filesize="du $BAM | grep -o [0-9] << echo"

# Check to see if file exists and is owned by user
# If not then file is created

if [[ -a $BAM  ]] && [[ -O $BAM ]]; then
	: 
else
	touch $BAM 
fi  

# Create file 
# Keep file size under 1mb
# Also need to make sure the size of file size being used is not over 1m



until [ $filesize -ge 1000 ]  

do 
#Create Random string

	  head /dev/urandom | tr -dc A-Za-z0-9 | head -c15 ;

done 
