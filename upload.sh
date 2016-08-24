#!/usr/bin/env bash

# Text formatting
TEXT_RED=$(tput setaf 1)
TEXT_GREEN=$(tput setaf 2)
TEXT_YELLOW=$(tput setaf 3)
TEXT_BLUE=$(tput setaf 4)
TEXT_BOLD=$(tput bold)
TEXT_RESET=$(tput sgr0)

echo -n "$TEXT_RED"
echo "Use with care! C-c to abort."
echo -n "$TEXT_RESET"
echo -n "$TEXT_BOLD"
echo -n "Username:$TEXT_RESET "
read user

cd public
echo "Uploading ./public to"
echo "$1:$2"
scp -r -i $3 . $user@$1:$2
echo "Done"
