#!/bin/bash #SHEBANG 
set -e #terminate script if any command exits with a nonzero exit status
set -u #abort script if variable's value is unset
set -o pipefail #nonzero exit status in a pipe will cause the entire pipe to return a nonzero status

#This script runs all .mgf files in a directory with the novor.sh command, and outputs them into a directory called "novor-output"

#change directory
echo change working directory
cd ~/Documents/git-repos/FISH-546/data/ETNP-plgs-mgf

echo listing files in current directory
ls