#! /bin/bash

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Please run this script as sudo or root" 1>&2
    exit 1
fi

# Make the dir to make sure path exist
mkdir -p /usr/share/nginx/error

# Copying files
cp *.html /usr/share/nginx/error/