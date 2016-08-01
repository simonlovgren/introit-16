#!/usr/bin/env bash

SCRIPT="$0"

# Text formatting
TEXT_RED=$(tput setaf 1)
TEXT_GREEN=$(tput setaf 2)
TEXT_YELLOW=$(tput setaf 3)
TEXT_BLUE=$(tput setaf 4)
TEXT_BOLD=$(tput bold)
TEXT_RESET=$(tput sgr0)

function print_help()
{
    echo "Usage:"
    echo "  $SCRIPT $TEXT_YELLOW/path/to/source_file $TEXT_GREEN/path/to/destination_file$TEXT_RESET"
}

function missing_arg()
{
    echo "  $TEXT_RED[Error]$TEXT_RESET Missing argument:$TEXT_YELLOW $1$TEXT_RESET"
    echo ""
    print_help
}

if [ "$1" != "" ]; then
    if [ "$1" == "help" ]; then
        print_help
        exit 0
    else
        SOURCE="$1"
    fi
else
    missing_arg "Source file"
    exit 1
fi

if [ "$2" != "" ]; then
    DEST="$2"
else
    missing_arg "Destination"
    exit 1
fi

command -v htpasswd > /dev/null 2>&1 || { echo >&2 "$TEXT_RED[Error]$TEXT_RESET htpasswd not available on this system. Aborting..."; exit 1; }

echo "Source: $SOURCE"
echo "Dest: $DEST"

#Touch file to create it if not exists
touch "$DEST"

while read pair
do
    echo "$pair" | awk -F, '{print $1" "$2}' | xargs htpasswd -bm "$DEST"
done < "$SOURCE"
