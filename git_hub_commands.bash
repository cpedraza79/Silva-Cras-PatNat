# Commands for git totrack changes from Working directory,stage to
#repository

# GIT help

git help

git help <verb> # verb is the function

# Define Atom as the core editor

git config --global core.editor "atom --wait"

# GIT CLONE from Silva-Cras-PatNat Repository

git clone https://github.com/cpedraza79/Silva-Cras-PatNat.git

# To check the status of files

git status

# In order to begin tracking a new file, you use the command git add
# Staged and unstaged files can be identified

git add <name of file>


# Details of changes. to know exactly what you changed, not just which
#files were
# changed — you can use the git diff command

git difftool

# To comit changes there is two options

#commit adding a description for example: story 13 includes git commands

git commit -m "story 13 includes git commands"

# Or commit without doing stage phase where add is not necessary
#automatically all track files and changes will be commited

git commit -a

# Or both

git commit -a -m "Story 14 test"


# Remove files from hard drive and from stage

git rm <file name>

git commit -a


# Remove file from stage but keep it in the hard drive

git rm --cached <file name>

# To review all commit history

git log --stat

# OR

git log

# OR include a time-limiting option

git log --since=2.weeks

git log --since=2008-01-15

git log --since=2.day

git log --since=5.minutes



#### WORKING WITH REMOTES

# First clone

git clone https://github.com/cpedraza79/Silva-Cras-PatNat.git


# cloned server is listed as origin by default

git remote -v

# FETCH

#Download objects and refs form another repository, pulls down from
#remote repository. Don't automatically merge it wit my local work

git fetch origin

# PULL

#if my current branch is set up to track the remote branch, use
#PULL to authomatically fetch and then merge that remote branch in local

git pull origin

# PUSH

#share from my local branch to remote branch

git push origin master

git remote show origin

# Create a branch

# we will create two branches <change> for change detection routines for EBD
#and <smbyc> for articulation with IDEAM


git branch change

git branch smbyc


git log --oneline --decorate --graph --all

## LET'S MERGE CAHNGES IN TWO DIFFERENT BRANCH (change and smbyc)

## first we will update some modificatios made on a file to the change branch

#let's point the head to change branch

git checkout change

#let check if is a modification to be commited

<<<<<<< HEAD
Cambio bajo el branch change [issue 1]

git status
=======


git status


cambio branch smbyc issue 2
>>>>>>> smbyc
