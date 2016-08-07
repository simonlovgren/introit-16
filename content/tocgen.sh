#!/bin/sh
# Small script for generating markdown toc
# Currently looks for header containing phrase "Innehåll"
# Should be moved to a variable, once adequate sed-skills are aqcuired

for i in $( ls *.md ); do
    # Backup files in case of screw-up
    cp $i ${i}.tocbk
    # Grep all lines starting with `##` (assume headers)
    # Remove header with "Innehåll"
    # Substitute all h2 with `+`
    # Substitute the rest of `#` with `\t`
    # Place header-title in square brackets, and lower-case copy following `(#`
    # Remove all non-alnum/whitespace following `(#`
    # Replace all whitespaces with `-`
    # Add closing `)` to end of all lines
    contents=`grep '##' $i \
            | sed 's/#\+ Innehåll//g' \
            | sed 's/##\s\+/+ /g' \
            | sed 's/#/\t/g' \
            | sed 's/+\s\(.*\)/+ [\1](#\L\1/g' \
            | sed ':a; s/(#\([[:alnum:] ]*\)[[:punct:]]/(#\1/g; ta' \
            | sed ':a; s/(#\([^ ][^ ]*\)\s/(#\1-/g; ta' \
            | sed 's/(#[^ ][^ ]*/&)/g' `
    # Remove all lines between "Innehåll" and first following line starting with `#`
    # Place toc after lLine containing "Innehåll"
    # Write to temporary file
    sed '/Innehåll/,/^#/{/Innehåll/!{/^#/!D}}' $i \
        | awk -v toc="\n${contents}\n" \
            '!found && /## Innehåll/ {print; print toc; next; found=1 } 1' \
        > ${i}.toc
    # Move temporary file to new one (fugly workaround, but `> ${i}` doesn't appear to work)
    mv ${i}.toc $i
done
