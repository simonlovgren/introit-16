#!/usr/bin/env sh

# Set username from given argument
username=$1

# Set name of tar-file
tar_file="${1}_terminal.tar.gz"

# Set name of folders
folder0_name="terminal_uppgift_${1}/"
folder1_name="deluppgift_1"
folder2_name="deluppgift_2"

# Set names of files
file1_name="textfil.txt"
file2_name="hittad_rad.txt"

# Set correct line for second file
correct_line="Hitta mig! Det här är resten av raden, som visar att du har hittat den."


# Set paths for files and folders
folder1="${folder0_name}${folder1_name}/"
folder2="${folder0_name}${folder2_name}/"
file1="${folder1}${file1_name}"
file2="${folder2}${file2_name}"

# Variable for counting issues
issues=0



# Extract archive
extract_archive ()
{
    if [ -d $folder0_name ]; then
        echo "$folder0_name already exists, skipping extraction.."
    else
        echo "Attempting to extract $tar_file"

        if [ -f $tar_file ]; then
            `tar -xjf $tar_file`
            if [ ! -d "$folder0_name" ]; then
                echo "[X] $folder0_name was not in archive $tar_file, exiting.."
                exit
            else
                echo "[O] $folder0_name was in archive $tar_file"
            fi
        else
            echo "[ERROR:] Cannot find file: $tar_file and $folder0_name does not exist. Exiting..."
            exit
        fi
    fi
}


# Check folder names
check_folders ()
{
    if [ ! -d $folder0_name ]; then
        echo "[X] $folder0_name not found, exiting.."
        exit
    else
        if [[ -d "$folder1" ]] && [[ -d "$folder2" ]]; then
            echo "[O] All required folders exist"
        else
            if [[ ! -d "$folder1" ]] && [[ ! -d "$folder2" ]]; then
                echo "[X] both $folder1_name and $folder2_name are missing from $folder0_name"
            elif [ ! -d "$folder1" ]; then
                echo "[X] $folder1_name is not in $folder0_name"
            elif [ ! -d "$folder2" ]; then
                echo "[X] $folder2_name is not in $folder0_name"
            fi
            echo "Exiting.."
            exit
        fi
    fi
}

# Check if files exists
check_files_exist ()
{
    if [[ -f $file1 ]] && [[ -f $file2 ]]; then
        echo "[O] $file1_name and $file2_name exist!"

        if [[ $(ls $folder2) = ${file2_name} ]]; then
            echo "[O] only $file2_name exists in $folder2_name"
        else
            echo "[X] $folder2_name contains additional files"
            issues=$(($issues + 1))
        fi
    else
        if [[ ! -f $file1 ]] && [[ ! -f $file2 ]]; then
            echo "[X] both $file1_name and $file2_name are missing"
        elif [ ! -f $file1 ]; then
            echo "[X] $file1_name is missing"
        elif [ ! -f $file2 ]; then
            echo "[X] $file2_name is missing"
        fi

        echo "Exiting.."
        exit
    fi
}

# Check contents of files
check_files_content ()
{
    if [[ $(head -1 $file2) = $(head -1 $file1) ]]; then
        echo "[O] $file1_name and $file2_name have the same first line"
    else
        echo "[X] $file1_name and $file2_name have different first lines"
        issues=$(($issues + 1))
    fi

    if [[ $(tail -1 $file2) = ${correct_line} ]]; then
        echo "[O] $file2_name has the correct last line"
    else
        echo "[X] $file2_name has the wrong last line, exiting"
        issues=$(($issues + 1))
    fi
}



# Run all functions
if [ ! -z $username ]; then

    echo "Testing handin for $username"

    extract_archive
    check_folders
    check_files_exist
    check_files_content

    echo "All points checked with $issues issues"
    exit

else

    echo "No username given"

fi


