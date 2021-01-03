#! /bin/bash

echo "Bash Scripting"  # prints 
echo # for new line

# You can use commands in the same line with ';'
echo "You are in $(pwd)"; echo
#Same: echo "You are in `pwd`"


echo "Files and directories in this path:" > file.txt # '>' Writes the result of the command to the file.

ls -al >> file.txt   # '>>'  appends the result of the command to the file.
echo "Files and directories' name in this path added to the file.." ; echo


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

# SPECIAL VARIABLES

: '
    $0:        The name of the Bash script.
    $1-$9:     The first 9 arguments to the Bash script.
    $#:        How many command line parameters were passed to the script.
    $@:        All the command line parameters passed to the script.
    $?:        The exit status of the last process to run.
    $$:        The Process ID (PID) of the current script.
    $USER:     The username of the user executing the script.
    $HOSTNAME: The hostname of the computer running the script.
    $SECONDS:  The number of seconds the script has been running for.
    $RANDOM:   Returns a random number.
    $LINENO:   Returns the current line number of the script.
'


# Let's see environment variables

env > env_variables.txt

cat << vars

Some examples of the special variables

\$0      => $0
\$USER   => $USER
\$LINENO => $LINENO

vars
