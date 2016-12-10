#!/bin/bash #SHEBANG 
set -e #terminate script if any command exits with a nonzero exit status
set -u #abort script if variable's value is unset
set -o pipefail #nonzero exit status in a pipe will cause the entire pipe to return a nonzero status

#This takes all PEAKS output .csv files, extracts the peptides column, trims the header, and puts these .txt files into the directory, data/ETNP-peaks-exports/"extracted peptides"

#change directory
echo change working directory
cd ~/Documents/git-repos/FISH-546/data/ETNP-peaks-exports

#list the files in the current directory
echo listing files in current directory
ls

#set variables
echo set variables
directoryname="ETNP-peaks-exports"
#output_file="${sample_name}.txt"

for i in *.csv; do
    wc -l
done

#for *.csv in $directoryname
#do
# list # of lines

#wc -l

#fastq_stat $fastq_file > extracted-peptides/$output_file
#done