#!/bin/bash #SHEBANG indicating my system's path to bash
set -e #terminate script if any command exits with a nonzero exit status
set -u #abort script if variable's value is unset
set -o pipefail #nonzero exit status in a pipe will cause the entire pipe to return a nonzero status

#I have some metagenome assembly FASTA files in my data directory that I don't need around. This script transfers those folders to a new directory called 'assemblies'.

#Set variables
echo Set variables
directory_name="assemblies"

#I want to make sure I'm in my `data` directory. So I'll change my working directory:

echo Change working directory
cd ~/Documents/git-repos/FISH-546/data

#Check that I'm in the right directory. The following executes an if statement. If in the coorect directory, the script proceeds.

echo Confirm working directory change with if statement
if [ $? -ne 0 ]
then echo "Couldn't change to desired directory. Make sure target directory exists before executing script."
fi

#My first step is to make the new directory.

echo Create a new directory
mkdir "$directory_name"

#Confirm the directory was made by listing the files/dirs in my data directory.

echo Confirm directory creation
ls

#I use a pipe with `find` and `xargs` commands, which take the files I want to move, and relocates them to my assemblies directory. The `-type d` argument for the `find` commands means I can move files matching my specific query, *prokka*.

echo Move files
find *prokka* -type d | xargs -I '{}' mv '{}' assemblies

#To see if this worked, I will list the content of the assemblies directory

echo Confirm files were moved
cd ~/Documents/git-repos/FISH-546/data/assemblies
ls
