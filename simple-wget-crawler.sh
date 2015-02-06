#!/bin/bash
# simple-wget-crawler.sh
# repat <repat@repat.de>
# Feb 2015
# Downloads a list of files from a text file where each line is a file name
# It downloads (-R) the file if it's not in the current folder yet (-nc)
# and exists on the server(--spider) via wget

# first command line parameter is filename
file=$1

# base URL from the norwegian shop
WEBSERVER="http://webserver.tld/folder/"

# IFS = Internal Field Separator
# read reads line by line through the given file below
# and saves current line in $line
while IFS= read -r line; do

    # build URL with filename
    FULLURL="$WEBSERVER$line"

    # see comments above
    wget -nc -R --spider $FULLURL

done < "$file"
