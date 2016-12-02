#I want to be move all PNG and JPEG files (screenshots) to a separate directory

#!/bin/bash #robust header (shebang line)

set -e #terminates the shell script from if a command exited with a nonzero exit status

set -u #aborts the shell script if a variable's value has not been set

set -o pipefail #if any program returns a nonzero exit status in the pipe it will cause the entire pipe to return a nonzero status

#change directory
echo change working directory
cd ~/Documents/git-repos/FISH-546/images

echo listing files in current directory
ls

#set variables
echo set variables
directoryname="Galaxy_screenshots"

if [ $? -ne 0 ] #place holder for all statements executed if [commands] evaluated are true (0)

then #commands to run if "pattern" is found
	echo "usage: Quiz_script.sh file_in.txt"
	exit 1
fi #finished

#make a directory
mkdir "$directoryname"
echo confirms creation of directory



#finding JPEG or PNG files
find *.JPG *.PNG | xargs -I '{}' mv '{}' Galaxy_screenshots
echo finding JPEG and PNG files and moving them to Galaxy_screenshots