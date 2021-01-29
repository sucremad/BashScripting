#! /bin/bash

## Inputs stderr

<< note
the > notation is used to redirect stdout to a file 
whereas 2> notation is used to redirect stderr and 
&> is used to redirect both stdout and stderr.

example:
some commands 2> /dev/null
note

<< notes

when we use cat command with '>',
cat reads the keyboard input and convert it to stdout
until we press Ctrl+D.

notes
echo "Now type something:\n"
cat > input.txt

echo

### Read From Keyboard...

echo -n "Enter a file name: "
read filename

line=$(wc -l < $filename)

echo "number of lines in $filename is $line"


## instead of prompting the user for filename, it's possible to
## make the user simply pass the filename as a cmdline arg. while
## running the script:

## ./file.sh filename
## ./bash-4.sh /etc/passwd

lines=$(wc -l < $1)
echo "number of lines in $1 is $lines"

<< note

  $1 means first argument
  $2 means second
  ...
  $0 means name of the file

note


## Passing Multiple Arguments

echo $1 $2 $3

# $@  	The value of all the arguments passed to the script.
# $#  	The total number of arguments passed to the script.
echo $@

echo ${9:-dev/stdin} # 9th argument

