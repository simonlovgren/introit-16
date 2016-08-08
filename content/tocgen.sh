#!/bin/sh
# Small script for generating markdown toc.
# Change variables to suit your needs.
# Assumes TOC is marked by a header, followed by another header.
# Note that all text between these is deleted, recovery is possible via backed up files.


# Modify this variable for the files your looking for
files=`ls *.md`

# This searches for keyword. Note that regex is handled by both sed and awk
keyword="#*# Innehåll"


for i in $files; do
    # Backup files in case of screw-up
    cp $i ${i}.tocbk

    # 1. Grep all lines starting with `##` (assume headers)
    # 2. Remove line containing keyword
    # 3. Substitute all h2 with `+`
    # 4. Substitute the rest of `#` with `\t`
    # 5. Place header-title in square brackets, and lower-case copy following `(#`
    # 6. This line is *icky*, point is we want to keep alnum and *some* special chars (eg / and -)
    #    We do this by matching a string of desired characters until it hits an undesired one and removing it
    #    (I suspect learning awk would solve this, but meh)
    # 7. Replace all whitespaces and remaining special chars with `-`
    # 8. Reduce >1 occurences with `-` to single `-`
    # 9. Add closing `)` to end of all lines
    contents=`grep '##' $i \
            | sed "s/$keyword//g" \
            | sed 's/##\s\+/+ /g' \
            | sed 's/#/\t/g' \
            | sed 's/+\s\(.*\)/+ [\1](#\L\1/g' \
            | sed ':a; s/(#\([[:alnum:] /-]*\)[()*_?,.:]/(#\1/g; ta' \
            | sed ':a; s/(#\([^ ][^ ]*\)[/ ]/(#\1-/g; ta' \
            | sed ':a; s/(#\([^ ][^ ]*\)--\+/(#\1-/g; ta' \
            | sed 's/(#[^ ][^ ]*/&)/g' `

    # Remove all lines between keyword and first following line starting with `#`
    # Place toc after line containing keyword
    # Write to temporary file
    sed "/$keyword/,/^#/{/$keyword/!{/^#/!D}}" $i \
        | awk -v toc="\n${contents}\n" \
            "!found && /$keyword/ {print; print toc; next; found=1 } 1" \
        > ${i}.toc
    # Move temporary file to new one (fugly workaround, but `> ${i}` doesn't appear to work)
    mv ${i}.toc $i
done
