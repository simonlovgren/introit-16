#!/bin/bash

ARCHTYPES="themes/introit16/archetypes"

# Text formatting
TEXT_RED=$(tput setaf 1)
TEXT_GREEN=$(tput setaf 2)
TEXT_YELLOW=$(tput setaf 3)
TEXT_BLUE=$(tput setaf 4)
TEXT_BOLD=$(tput bold)
TEXT_RESET=$(tput sgr0)

echo -n "$TEXT_BOLD"
echo -n "Enter section name$TEXT_RESET [lowercase, no special chars and no spaces (use dash (-) instead]: "
read name

hugo new $name.md
echo -n "$TEXT_BOLD"
echo -n "This file is for the information page."
echo "$TEXT_RESET"

hugo new $name/uppgifter.md
echo -n "$TEXT_BOLD"
echo -n "This file is for the exercise(s)."
echo "$TEXT_RESET"

if [ ! -f data/modules/$name.toml ]; then
  mkdir -p data/modules && sed "s/section_name/$name/g" $ARCHTYPES/default.toml > data/modules/$name.toml
  echo "$(pwd)/data/modules/$name.toml created"
else
  echo "ERROR: $(pwd)/data/modules/$name.toml exists"
fi

echo -n "$TEXT_BOLD"
echo "This file is for module data (title, tagline, etc.)"
echo -n "$TEXT_GREEN"
echo "Don't forget to add icon in image folder and section colors in SCSS"
echo "$TEXT_RESET"
