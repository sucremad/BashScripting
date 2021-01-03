#! /bin/bash

echo "Bash Scripting"  # prints 
echo # for new line

# You can use commands in the same line with ';'
echo "You are in $(pwd)"; echo
#Same: echo "You are in `pwd`"


echo "Files and directories in this path:" > file.txt # '>' Writes the result of the command to the file.

ls -al >> file.txt   # '>>'  appends the result of the command to the file.
echo "Files and directories' name in this path added to the file.."




# This is a one line comment.

: ' This
    is a
    multiline
    comment'

# heredoc '<<'


cat << anyName

You can write here
anything you wnat.
End it with the name.

anyName


