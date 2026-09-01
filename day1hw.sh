#!/bin/bash
#Complete the following 

#Accept a filename as the first command-line argument.
#Print a helpful usage message if no filename is provided.
#Check whether the supplied file exists and print an error if it does not.
#If the file exists, report the filename, its human-readable file size, its number of lines, its number of characters, and the number of lines containing ATATATAT.
#Give the script execute permission and run it from the command line.
#./file_summary.sh first10lines.txt

myfilename=$1

echo "$myfilename"

if [[ $myfilename ]]
then 
    echo "You provided a filename: $myfilename"
    if [[ -f $myfilename ]]
    then
        echo "The file $myfilename exists."
        humanreadable=$(du -h $myfilename | cut -f1)
        echo $humanreadable
        numlines=$(wc -l $myfilename | cut -d ' ' -f1)
        echo $numlines
        numchars=$(wc -m $myfilename)
        echo $numchars
        numATATATAT=$(grep -c "ATATATAT" $myfilename)
        echo $numATATATAT

            
    else
        echo "Error: The file $myfilename does not exist."
        exit 1
    fi
else
    echo "Please provide a filename as the first command-line argument."
    exit 1
fi

#if [[ "$line" == "chr01.fsa" ]]
 