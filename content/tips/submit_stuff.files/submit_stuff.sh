#!/bin/bash

set -e  # make it exit on error
# make this script executable with chmod +x submit_stuff.sh
# run it with ./submit_stuff.sh

# change into current lab 

## explicit directory specification
# echo What is the lab directory?
# read sub_dir

## using a hard-coded username instead
git_user="christiangil"
echo What lab are you working on?
read lab_num
sub_dir="lab$lab_num-$git_user"

# create .jmd files
julia create_jmds.jl $sub_dir

# change to sub directory for git commits
cd $sub_dir

# get commit message
echo Git commit message?
read input

# git adding files that have have been changed and were already being tracked
git add .
# git adding files ending in ipynb, jmd and jl
git add *.ipynb *.jmd *.jl 
# git commiting files ending in ipynb, jmd and jl
git commit -a -m "$input"
git push

# change back into original directory 
cd ..

echo Remember to create a pull request once your done.
echo http://github.com/PsuAstro528/lab$lab_num-$git_user
