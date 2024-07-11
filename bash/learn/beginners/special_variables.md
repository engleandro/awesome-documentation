# BASH: SPECIAL VARIABLES

Bash offers special variables to deal with process and scripting:
* `$$`: the process ID number, or PID, of the current shell. For shell scripts, this is the process ID under which they are executing.
* `$0`: The filename of the current script.
* `$n`: These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on).
* `$#`: The number of arguments supplied to a script.
* `$*`: All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
* `$@`: All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.
* `$?`: The exit status of the last command executed: 0 means success and 1-255 means errors/fails.
* `$!`: The process number of the last background command.

`$*` and `$@` both will retrieve the all command-line arguments enclosed in double quotes ("").

## BASH TOPIC

```bash
#!/bin/sh
echo "Process ID: $$"
echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"
```

```bash
#!/bin/sh
for TOKEN in $*
do
   echo $TOKEN
done
```

```bash
#!/bin/sh
for TOKEN in $@
do
    echo $TOKEN
done
```
