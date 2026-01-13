#!/bin/bash

######################
#Author:- Priyanshu pradhan
#Date:- 13th jan 2026
#Here We are monitoring the Node health
######################

#For Debuf Mode
set -x
#Exit thescript when there is a error
set -e
#Exit when there ios a error in pipeline
set -o pipefail

#To Check the memory 
echo "The memory useage is"
free -m


#To check the CPU useage
echo "The cpu is used here is"
nproc

#To check the disk space
echo" The disk space is"
df

#To find all the process ID of Python Processes
echo "All the python process id are"
ps aux | grep "python" | awk -F " "  '{print $2}'
