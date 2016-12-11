#!/bin/bash #SHEBANG 
set -e #terminate script if any command exits with a nonzero exit status
#set -u #abort script if variable's value is unset
set -o pipefail #nonzero exit status in a pipe will cause the entire pipe to return a nonzero status

#This script is to practce doing some action (like extracting a columns from a csv file) from all like files in a directory

#change directory
echo change working directory
cd ~/Documents/Detritus/python_learning/practice-csv

#list the files in the current directory
echo listing the .csv files in current directory
echo *.csv

#set variables
#echo set variables
#output_dir="practice-exports"
#output_file="${sample_name}.txt"

#for *.csv; do
    #wc -l
#done

#for *.csv 
#do
# list # of lines

#wc -l

#fastq_stat $fastq_file > extracted-peptides/$output_file
#done