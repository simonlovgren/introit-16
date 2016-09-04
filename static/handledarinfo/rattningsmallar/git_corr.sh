#!/usr/bin/env bash

# Set username from given argument
username=$1

# Set name of tar-file
tar_file="${1}_git.tar.gz"

# Set name of folders
folder="${1}_git/"

# Set names of files
file1="introduktionskurs.txt"
file2="kurser.txt"
file3="urval.txt"

# Variable for counting issues
issues=0
# Variables for tracking git status
git_name=""
commit_copy=""
commit_cut=""
commit_merge=""

# Extract archive
extract_archive ()
{
    if [ -d $folder ]; then
        echo "$folder already exists, skipping extraction.."
    else
        echo "Attempting to extract $tar_file"

        if [ -f $tar_file ]; then
            `tar -zxf $tar_file`
            if [ ! -d "$folder" ]; then
                echo "[X] $folder was not in archive $tar_file, exiting.."
                exit
            else
                echo "[O] $folder was in archive $tar_file"
            fi
        else
            echo "[ERROR:] Cannot find file: $tar_file and $folder does not exist. Exiting..."
            exit
        fi
    fi
}

# Check if files exists
check_files ()
{
    if [[ -f $file1 ]] && [[ -f $file2 ]] && [[ -f $file3 ]]; then
        echo "[O] $file1, $file2 and $file3 exist!"
    else
        if [[ ! -f $file1 ]]; then
            echo "[X] $file1 is missing"
        fi

        if [ ! -f $file2 ]; then
            echo "[X] $file2 is missing"
        fi

        if [ ! -f $file3 ]; then
            echo "[X] $file3 is missing"
        fi
        
        echo "Exiting..."
        exit -1
    fi
}

#Check Git repo exists and is configed correctly
check_repo ()
{
    if ! git status >> /dev/null ; then
        echo "[X] There is no git repo present"
        echo "Exiting..."
        exit -1
    else
        echo "[O] Git repo is present"
        
        initial_issues=$(($issues))
        git_name=$(git config user.name)
        if [ $git_name != $username ]; then
            echo "[X] Missing or incorrect user.name in config"
            issues=$(($issues + 1))
        fi

        if [ $(git config user.email) != "$username@student.uu.se" ]; then
            echo "[X] Missing or incorrect user.email in config"
            issues=$(($issues + 1))
        fi

        if [ $initial_issues == $issues ]; then
            echo "[O] Git repo config is correct"
        fi
    fi
}

# Check git log for specified commits
check_git_log ()
{
    log=$(git log --abbrev-commit --format="%h,%Cgreen%an%Creset,%p,%s")

    # Check same user for all commits
    sameuser=1
    while read a; do
        if [ $git_name != $(echo "$a" | cut --delim="," --fields=2) ]; then
            echo "[X] Not same user for all commits"
            issues=$(($issues + 1))
            sameuser=0
            break
        fi
    done <<< "$log"
    
    if [ $sameuser != 0 ]; then
        echo "[O] Same user for all commits"
    fi

    # Get kopierade kurser commit
#    while read a; do
#        comment=$(echo "$a" | cut --delim="," --fields=4 | tr '[:upper:]' '[:lower:]')
#        if [ $comment == $(echo "kopierade kurser till urval") ]; then
#            commit_copy=$(echo "$a" | cut --delim="," --fields=1)
#        fi
#    done <<< "$(echo \"$log\")"
#    
#    if [ -z $commit_copy ]; then
#        echo "[X] Commit 'kopierade kurser till urval' missing"
#        issues=$(($issues + 1))
#    else
#         echo "[O] Commit 'kopierade kurser till urval' present"
#    fi
}


# Execution of script
# Run all functions
if [ ! -z $username ]; then

    echo "Testing handin for $username"

    extract_archive
    cd $folder
    pwd
    check_files
    check_repo
    check_git_log

    echo "All points checked with $issues issues"
    exit

else

    echo "No username given"

fi
