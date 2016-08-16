#!/usr/bin/env python

import sys, getopt, os

# GLOBALS
recursive = False
symlinks = False

# Filter list of acceptable file extensions
extensions = [".md"]

##
# Print help and exit w/ supplied exit level
##
def printHelp(exitLevel):
    print ""
    print "usage:\tlastmod_update.py [-r] [-s] target"
    print "\tlastmod_update.py [-r] [-s] target target ... target"
    print ""
    print "\t-r\tRecursive mode"
    print "\t-s \tFollow symbolic links"
    print ""
    sys.exit(exitLevel)

##
#  Performs the actual updating of the supplied file
##
def updateFile(target, modified):
    print("TODO: Update file " + os.path.relpath(target))
    
    # 1. Extract mtime, ctime och access time
    # 2. Modify file, set lastmod-field
    # 3. reset file mtime, ctime and access time with
    #    stored mtime, ctime and access time to preserve
    #    between script-runs
    
    
##
#  Checks if file is of correct type, and if so hands over file
#  and modified timestamp to updateFile
##
def parseFile(target):
    # Globals
    global extensions
    
    filename, ext = os.path.splitext(target)
    # If file is of correct extension
    if ext in extensions:
        updateFile(target, os.path.getmtime(target))

##
#  Takes target and possible subpath, determines if folder or file
#  and checks against rules/flags.
#   - If recursive set, enter subdirectories
#   - If symlinks set, follow symlinks
#   - If file, hand off to parseFile to check if follows rules for files
##
def parseTarget(targets, subpath):
    #Globals
    global symlinks, recursive

    for target in targets:
        if not subpath:
            # Get absolute path to target
            target = os.path.abspath(target)
        else:
            #print("subpath given:",subpath)
            #raw_input("continue?")
            target = os.path.abspath(subpath + os.sep + target)
            
        # Get info on target
        isfile = os.path.isfile(target)
        isfolder = os.path.isdir(target)
        islink = os.path.islink(target)

        # if folder, check if symlink and if so allowed, check if recursive flag and not initial target
        if isfolder and not (islink and not symlinks) and (recursive or not subpath):
            if not target.startswith('.'):
                #print("folder, going to: ", target)
                #raw_input("continue?")
                parseTarget(os.listdir(target), target)
            
        elif isfile:
            if not target.startswith('.'):
                parseFile(target)

        else:
            if not isfolder and not islink:
                print(target + "\t\tdoes not exist")
##
#  Main function. Parses options and arguments,
#  then starts the parsing of target(s)
##
def main(argv):
    #Globals
    global symlinks, recursive

    # Extract options and arguments
    try:
        opts, args = getopt.getopt(argv, "rsh", ["help","follow-symlinks"])
    except Exception:
        printHelp(2)

    # Parse options
    for opt, arg in opts:
        if opt == "--help" or opt == "-h":
            printHelp(0)
        if opt == "-r":
            recursive = True
        if opt == "--follow-symlinks" or opt == "-s":
            symlinks = True
        
    # Check so that we've got a file or folder to update
    if len(args) != 1:
        printHelp(2)

    # Parse folder/file
    parseTarget(args, None) #give target argument and signal first call to function


if __name__ == "__main__":
    main(sys.argv[1:])
