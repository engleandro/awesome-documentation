# BASH: the Bourne Again SHell

## References:
- [Bash Official](https://www.gnu.org/software/bash/)

## Getting Started

Bash, short for "Bourne Again Shell," is a powerful scripting language commonly used on Unix-like operating systems.

## INSTALLATION & CONFIGURATION

```shell
sudo apt-get update && sudo apt-get install bash
```

---

# BASH BEGINEER

## Overview of Bash
- Installation and setup
- Running Bash scripts

### Basic Syntax
- Variables and data types
- Quoting rules
- Comments
- Input and output

### Control Structures
- Conditional statements (if, elif, else)
- Loops (for, while)
- Case statements

## Functions
- Defining functions
- Passing arguments
- Returning values

### File Operations
- Working with files and directories
- File manipulation (reading, writing, appending)
- File permissions and ownership

### String Manipulation
- Concatenation
- Substring extraction
- Searching and replacing

### Arrays
- Declaring and initializing arrays
- Accessing array elements
- Array manipulation

### Error Handling and Debugging
- Error handling techniques
- Debugging tools and strategies

### Advanced Techniques
- Command substitution
- Pattern matching
- Regular expressions

---

## Basic Syntax Tutorial
In this tutorial, we will cover the basic syntax of Bash scripting. Bash, short for "Bourne Again Shell," is a powerful scripting language commonly used on Unix-like operating systems.

### Variables
Variables in Bash are used to store data. They are declared without any specific data type.

```shell
# Variable declaration and assignment
name="John"
age=30

# Accessing variables
echo "Name: $name"
echo "Age: $age"
```

### Quoting Rules
Quoting is used to remove the special meaning of certain characters or words to the shell.

```shell
# Single quotes
echo 'Single quotes do not allow variable expansion: $name'

# Double quotes
echo "Double quotes allow variable expansion: $name"
```

### Comments
Comments in Bash start with the # symbol and extend to the end of the line.

```shell
# This is a comment
echo "Hello, world!"  # This is also a comment
```

### Input and Output
Bash provides several ways to read input from users and display output.

```shell
# Reading input
echo "Enter your name: "
read username
echo "Hello, $username!"

# Output redirection
echo "This will be written to a file" > output.txt

# Appending to a file
echo "This will be appended to the file" >> output.txt

# Command substitution
current_date=$(date +%Y-%m-%d)
echo "Today's date is $current_date"
```

### Exit Status
Every command in Bash returns an exit status upon completion. A zero exit status indicates success, while a non-zero exit status indicates failure.

```shell
# Checking exit status
ls
echo "Exit status: $?"

# Simulating an error
cat nonexistent_file
echo "Exit status: $?"
```

---

# Control Structures Tutorial
In Bash scripting, control structures are used to execute commands based on certain conditions or to repeat a set of commands multiple times. In this tutorial, we will cover the main control structures: conditional statements, loops, and case statements.

## Conditional Statements
Conditional statements allow you to execute different commands based on the evaluation of conditions.

### if Statement
The if statement evaluates a condition and executes a block of code if the condition is true.

```shell
# Example of if statement
if [ "$1" -gt 10 ]; then
    echo "$1 is greater than 10"
fi
```

### if-else Statement
The if-else statement allows you to execute one block of code if the condition is true and another block if the condition is false.

```shell
# Example of if-else statement
if [ "$1" -gt 10 ]; then
    echo "$1 is greater than 10"
else
    echo "$1 is not greater than 10"
fi
```

### elif Statement
The elif statement allows you to check multiple conditions sequentially.

```shell
# Example of elif statement
if [ "$1" -gt 10 ]; then
    echo "$1 is greater than 10"
elif [ "$1" -eq 10 ]; then
    echo "$1 is equal to 10"
else
    echo "$1 is less than 10"
fi
```

## Loops
Loops are used to repeat a set of commands multiple times.

### for Loop
The for loop iterates over a sequence of values.

```shell
# Example of for loop
for i in {1..5}; do
    echo "Iteration $i"
done
```

### while Loop
The while loop executes a block of code as long as a condition is true.

```shell
# Example of while loop
count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done
```

### until Loop
The until loop executes a block of code until a condition becomes true.

```shell
# Example of until loop
count=1
until [ $count -gt 5 ]; do
    echo "Count: $count"
    ((count++))
done
```

## Case Statement
The case statement allows you to match the value of a variable against a list of patterns.

```shell
# Example of case statement
case "$1" in
    start)
        echo "Starting the service..."
        ;;
    stop)
        echo "Stopping the service..."
        ;;
    restart)
        echo "Restarting the service..."
        ;;
    *)
        echo "Usage: $0 {start|stop|restart}"
        exit 1
        ;;
esac
```

---

# Functions Tutorial
In Bash scripting, functions are reusable blocks of code that perform a specific task. They help in organizing code, improving readability, and promoting code reuse. In this tutorial, we will cover the basics of defining functions, passing arguments, and returning values.

## Defining Functions
To define a function in Bash, use the function keyword followed by the function name and a pair of parentheses {} containing the function body.

```shell
# Example of defining a function
function greet {
    echo "Hello, world!"
}
```

Alternatively, you can define a function without the function keyword:

```shell
# Another way to define a function
greet() {
    echo "Hello, world!"
}
```

## Calling Functions
To call a function, simply use its name followed by a pair of parentheses.

```shell
# Calling the greet function
greet
```
## Passing Arguments
You can pass arguments to functions just like you pass arguments to scripts.

```shell
# Example of passing arguments to a function
function greet_user {
    echo "Hello, $1!"
}

# Calling the greet_user function with an argument
greet_user "John"
```

## Returning Values
Bash functions can return values using the return keyword.

```shell
# Example of returning a value from a function
function add {
    local result=$(( $1 + $2 ))
    return $result
}

# Calling the add function and capturing the return value
add 10 20
sum=$?
echo "Sum: $sum"
```

---

# File Operations Tutorial
In Bash scripting, file operations allow you to perform various tasks such as creating, reading, writing, and manipulating files. In this tutorial, we will cover the basic file operations using Bash commands and functions.

## Working with Files and Directories

### Checking File Existence
To check if a file exists, you can use the -e or -f flag with the test command.

```shell
# Example of checking file existence
if [ -e "file.txt" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

## Creating Directories
To create a directory, use the mkdir command.

```shell
# Example of creating a directory
mkdir my_directory
```

## Changing Directories
To change the current directory, use the cd command.

```shell
# Example of changing directory
cd my_directory
```

## Listing Files
To list files and directories in the current directory, use the ls command.

```shell
# Example of listing files
ls
```

## File Manipulation

### Reading Files
To read the contents of a file, you can use commands like cat, head, or tail.

```shell
# Example of reading a file using cat
cat file.txt
```

### Writing to Files
To write content to a file, you can use redirection with the echo command.

```shell
# Example of writing to a file
echo "Hello, world!" > file.txt
```

### Appending to Files
To append content to a file, use double redirection with the echo command.

```shell
# Example of appending to a file
echo "More text" >> file.txt
```

### File Permissions and Ownership
To change file permissions and ownership, use the chmod and chown commands.

```shell
# Example of changing file permissions
chmod 755 script.sh

# Example of changing file ownership
chown user:group file.txt
```

---

# String Manipulation Tutorial
In Bash scripting, string manipulation refers to performing various operations on strings such as concatenation, substring extraction, searching, and replacing. In this tutorial, we will cover the basic string manipulation techniques using Bash commands and functions.

## Concatenation
To concatenate strings in Bash, you can simply use the concatenation operator + or by appending strings using variable expansion.

```shell
# Example of string concatenation
str1="Hello"
str2="world"
concatenated="$str1 $str2"
echo $concatenated
```

## Substring Extraction
You can extract substrings from a string using parameter expansion with the ${parameter:offset:length} syntax.

```shell
# Example of substring extraction
str="Hello, world!"
substring=${str:7:5}  # Extracting "world"
echo $substring
```

## Searching and Replacing
Searching for Substrings
To search for a substring within a string, you can use the grep command.

```shell
# Example of searching for a substring
str="Hello, world!"
if echo $str | grep -q "world"; then
    echo "Substring found"
else
    echo "Substring not found"
fi
```

## Replacing Substrings
To replace a substring within a string, you can use parameter expansion with the ${parameter//pattern/replacement} syntax.

```shell
# Example of replacing a substring
str="Hello, world!"
new_str=${str/world/Universe}
echo $new_str
```

## Length of a String
To get the length of a string in Bash, use the ${#parameter} syntax.

```shell
# Example of getting the length of a string
str="Hello, world!"
length=${#str}
echo "Length of the string: $length"
```

---

# Arrays Tutorial
In Bash scripting, arrays are used to store multiple values under a single variable name. They provide a convenient way to manage collections of data. In this tutorial, we will cover the basics of declaring arrays, accessing elements, and performing operations on arrays.

## Declaring and Initializing Arrays
To declare an array in Bash, simply assign values to it using parentheses () or the declare keyword.

```shell
# Example of declaring and initializing an array
my_array=(apple banana orange)
```

Alternatively, you can use the declare keyword:

```shell
# Another way to declare and initialize an array
declare -a my_array=("apple" "banana" "orange")
```

## Accessing Array Elements
You can access individual elements of an array using the index enclosed in square brackets [].

```shell
# Example of accessing array elements
echo ${my_array[0]}  # Accessing the first element
echo ${my_array[1]}  # Accessing the second element
echo ${my_array[2]}  # Accessing the third element
```

## Array Length
To get the length of an array in Bash, use the ${#array[@]} syntax.

```shell
# Example of getting the length of an array
length=${#my_array[@]}
echo "Length of the array: $length"
```

## Array Manipulation

### Adding Elements
You can add elements to an array using the += operator or by assigning values to specific indices.

```shell
# Example of adding elements to an array
my_array+=(grape)
my_array[3]="melon"
```

### Removing Elements
To remove elements from an array, you can unset specific indices.

```shell
# Example of removing elements from an array
unset my_array[2]  # Remove the third element
```

### Iterating Over Arrays
You can iterate over the elements of an array using a for loop.

```shell
# Example of iterating over an array
for fruit in "${my_array[@]}"; do
    echo "$fruit"
done
```

---

# Error Handling and Debugging Tutorial

In Bash scripting, error handling and debugging are essential skills for writing robust and reliable scripts. In this tutorial, we will cover techniques for error handling, debugging tools, and strategies to troubleshoot common issues.

## Error Handling Techniques

### Exit Status
Every command in Bash returns an exit status upon completion. A zero exit status indicates success, while a non-zero exit status indicates failure.

```shell
# Example of checking exit status
ls
if [ $? -eq 0 ]; then
    echo "Command executed successfully"
else
    echo "Command failed"
fi
```

### Error Messages
You can display custom error messages to provide more information about errors.

```shell
# Example of displaying error messages
if [ ! -f "file.txt" ]; then
    echo "Error: File not found"
    exit 1
fi
```

### Error Trapping
You can use the trap command to catch signals and execute a command or script upon receiving a signal.

```shell
# Example of error trapping
trap 'echo "Error occurred"; exit 1' ERR
```

## Debugging Tools

#### set -x
The set -x option enables debugging mode, which displays each command before executing it.

```shell
# Example of enabling debugging mode
set -x
echo "Hello, world!"
set +x  # Disable debugging mode
```

### echo
Using echo statements to print variable values and intermediate results can help in debugging scripts.

```shell
# Example of using echo for debugging
var="value"
echo "Variable value: $var"
```

## Strategies for Debugging

### Divide and Conquer
Break your script into smaller parts and test each part individually to identify the source of errors.

### Use set -e Option
The set -e option terminates the script if any command exits with a non-zero status, which can help catch errors early.

```shell
# Example of using set -e option
set -e
```

### Logging
Use logging techniques to record the execution flow, variable values, and error messages for analysis.

```shell
# Example of logging
echo "Script started" >> script.log
```

---

# Advanced Techniques Tutorial
In this tutorial, we will cover advanced techniques in Bash scripting, including command substitution, pattern matching, and regular expressions.

## Command Substitution
Command substitution allows you to execute a command and use its output as part of another command or expression.

```shell
# Example of command substitution
current_date=$(date +%Y-%m-%d)
echo "Today's date is $current_date"
```

## Pattern Matching
Pattern matching allows you to match strings against specific patterns using wildcard characters.

### Globbing
Globbing is a form of pattern matching used by the shell to match filenames and pathnames.

```shell
# Example of globbing
files=$(ls *.txt)
echo "Text files: $files"
```

### Extended Globbing
Extended globbing provides more advanced pattern matching capabilities, such as matching multiple patterns or excluding certain patterns.

```shell
# Enable extended globbing
shopt -s extglob

# Example of extended globbing
files=$(ls !(file1.txt|file2.txt))
echo "Files except file1.txt and file2.txt: $files"
```

## Regular Expressions
Regular expressions are powerful patterns used to search, match, and manipulate text strings.

### grep Command
The grep command is used to search for patterns in text files using regular expressions.

```shell
# Example of using grep with regular expressions
grep -E 'pattern' file.txt
```

### sed Command
The sed command is a stream editor used to perform text transformations using regular expressions.

```shell
# Example of using sed with regular expressions
sed 's/pattern/replacement/g' file.txt
```

### awk Command
The awk command is a powerful text processing tool that allows you to manipulate text files using patterns and actions.

```shell
# Example of using awk with regular expressions
awk '/pattern/ { print $1 }' file.txt
```

---

# Best Practices Tutorial
In this tutorial, we will cover best practices for writing Bash scripts to ensure readability, maintainability, and efficiency.

## Writing Modular and Reusable Code

### Functions
Use functions to encapsulate reusable blocks of code and promote code organization.

```shell
# Example of using functions
function greet {
    echo "Hello, $1!"
}

# Call the function
greet "John"
```

### Libraries
Split your script into multiple files or modules for better organization and reuse of code.

```shell
# Example of using libraries
source common_functions.sh

# Call functions from the library
greet "Jane"
```

## Shell Scripting Conventions

### Shebang
Always include a shebang line at the beginning of your script to specify the interpreter.

```shell
#!/bin/bash
```

### Indentation and Formatting
Use consistent indentation and formatting to enhance readability.

```shell
# Example of indentation and formatting
if [ "$var" -eq 0 ]; then
    echo "Variable is zero"
else
    echo "Variable is not zero"
fi
```

### Comments
Include descriptive comments to explain the purpose of your code and any important details.

```shell
# Example of comments
# Check if the variable is zero
if [ "$var" -eq 0 ]; then
    echo "Variable is zero"
else
    echo "Variable is not zero"
fi
```

## Performance Optimization Tips

### Use Built-in Commands
Prefer built-in commands over external commands for improved performance.

```shell
# Example of using built-in commands
echo "Current directory: $PWD"
Limit Redundant Operations
Avoid unnecessary loops, function calls, and file operations to minimize overhead.

```shell
# Example of limiting redundant operations
result=$(( 10 + 20 ))
echo "Result: $result"
```

### Optimize Loops
Optimize loops by minimizing the number of iterations and avoiding unnecessary operations inside loops.

```shell
# Example of optimizing loops
for i in {1..10}; do
    echo "Iteration: $i"
done
```

---

# 100 Most Important and Useful Bash Commmand

### 0. help: Displays Bash and its commands help

```shell
#!/bin/bash
help    # Displays help about Bash cmdlets and concepts
help cd # Displays the command help 
```

### 1. cd: Change directory

```shell
#!/bin/bash
cd tmp              # Change directory to tmp
cd ~                # change to system root directory
cd ..               # go backward in the path tree
cd ./folder-name    # go forward in the path tree
cd /folder          # go to the "folder" at the root directory
```

## 2. ls: List contents of the current directory

```shell
#!/bin/bash
ls          # list contents of the current directory
ls -l       # list contents of the current directory as a list
ls -a       # list all contents of the current directory
ls -la      # list all contents of the current directory as a list
ls "folder" # list contents of the "folder" directory
```

## 3. pwd: Print working directory

```shell
# Print current working directory
pwd
```

## 4. mkdir: Make directory

```shell
# Create a new directory named 'test'
mkdir test
```

## 5. touch: Create a new file or update timestamps of existing files

```shell
# Create a new file named 'example.txt'
touch example.txt
```

## 6. rm: Remove files or directories

```shell
#!/bin/bash

# Remove a file named 'example.txt'
rm example.txt
rm -f example.txt   # --force

# Remove a directory named 'test'
rm -r test
```

## 7. cp: Copy files or directories

```shell
#!/bin/bash

# Copy file 'source.txt' to 'destination.txt'
cp source.txt destination.txt

# Copy directory 'source_dir' to 'destination_dir'
cp -r source_dir destination_dir
```

## 8. mv: Move or rename files or directories

```shell
#!/bin/bash

# Move file 'old.txt' to 'new.txt'
mv old.txt new.txt

# Rename directory 'old_dir' to 'new_dir'
mv old_dir new_dir
```

## 9. cat: Concatenate and display file content

```shell
#!/bin/bash

# Display content of a file named 'example.txt'
cat example.txt
```

## 10. grep: Search for patterns in files

```shell
#!/bin/bash

# Search for 'pattern' in 'file.txt'
grep "pattern" file.txt
```

## 11. head: Display the beginning of a file

```shell
#!/bin/bash

# Display the first 10 lines of a file named 'example.txt'
head example.txt
```

## 12. tail: Display the end of a file

```shell
#!/bin/bash

# Display the last 10 lines of a file named 'example.txt'
tail example.txt
```

## 13. wc: Count lines, words, and characters in a file

```shell
#!/bin/bash

# Count lines, words, and characters in a file named 'example.txt'
wc example.txt
```

## 14. sort: Sort lines of text files

```shell
#!/bin/bash

# Sort lines of text in a file named 'example.txt' alphabetically
sort example.txt
```

## 15. uniq: Report or omit repeated lines in a file

```shell
#!/bin/bash

# Print unique lines from a file named 'example.txt'
uniq example.txt
```

## 16. cut: Remove sections from each line of files

```shell
#!/bin/bash

# Extract characters from a specific range of positions in each line of a file
cut -c 1-5 example.txt
```

## 17. paste: Merge lines of files

```shell
#!/bin/bash

# Merge lines from two files side by side
paste file1.txt file2.txt
```

## 18. tee: Read from standard input and write to standard output and files

```shell
#!/bin/bash

# Read input from user and write to both the screen and a file named 'output.txt'
echo "Enter some text: "
tee output.txt
```

### 19. find: Search for files in a directory hierarchy

```shell
#!/bin/bash

# Find all files with a specific name pattern in the current directory and its subdirectories
find . -name "*.txt"
```

## 20. locate: Find files by name

```shell
#!/bin/bash

# Find files matching a specific name pattern using 'locate' command
locate "*.txt"
```

## 21. which: Locate a command

```shell
#!/bin/bash

# Locate the absolute path of the 'ls' command
which ls
```

## 22. whereis: Locate the binary, source, and manual page files for a command

```shell
#!/bin/bash

# Locate the binary, source, and manual page files for the 'ls' command
whereis ls
```

### 23. alias: Create an alias for a command

```shell
#!/bin/bash

# Create an alias 'l' for the 'ls' command
alias l='ls -lh'
```

### 24. history: Display the command history

```shell
#!/bin/bash

# Display the command history
history
```

### 25. man: Display the manual page for a command

```shell
#!/bin/bash

# Display the manual page for the 'ls' command
man ls
```

### 26. apropos: Search the manual page names and descriptions

```shell
#!/bin/bash

# Search for manual pages related to the 'list' keyword
apropos list
```

### 27. df: Display disk space usage

```shell
#!/bin/bash

# Display disk space usage
df -h
```

### 28. du: Estimate file space usage

```shell
#!/bin/bash

# Estimate file space usage in the current directory
du -sh *
```

## 29. free: Display amount of free and used memory in the system

```shell
#!/bin/bash

# Display amount of free and used memory in the system
free -h
```

## 30. top: Display and update sorted information about processes

```shell
#!/bin/bash

# Display information about processes in real-time
top
```

### 31. ps: Report a snapshot of the current processes

```shell
#!/bin/bash

# Display a snapshot of the current processes
ps aux
```

### 32. kill: Terminate processes

```shell
#!/bin/bash

# Terminate a process with a specific PID
kill PID
```

### 33. chmod: Change file permissions

```shell
#!/bin/bash

# Change permissions of a file named 'script.sh' to make it executable
chmod +x script.sh
```

### 34. chown: Change file ownership

```shell
#!/bin/bash

# Change ownership of a file named 'file.txt' to user 'user'
chown user file.txt
```

### 35. chgrp: Change group ownership of files

```shell
#!/bin/bash

# Change group ownership of a file named 'file.txt' to group 'group'
chgrp group file.txt
```

### 36. tar: Archive files

```shell
#!/bin/bash

# Create a tar archive named 'archive.tar' from files in the current directory
tar -cvf archive.tar *
```

### 37. zip: Package and compress files

```shell
#!/bin/bash

# Create a ZIP file named 'archive.zip' from files in the current directory
zip -r archive.zip *
```

### 38. unzip: Extract files from a ZIP archive

```shell
#!/bin/bash

# Extract files from a ZIP archive named 'archive.zip'
unzip archive.zip
```

### 39. gzip: Compress files

```shell
#!/bin/bash

# Compress a file named 'file.txt' using gzip
gzip file.txt
```

### 40. gunzip: Decompress files

```shell
#!/bin/bash

# Decompress a file named 'file.txt.gz' using gunzip
gunzip file.txt.gz
```shell

### 41. ssh: Secure shell remote login

```shell
#!/bin/bash

# Connect to a remote server using SSH
ssh username@remote_host
```

### 42. scp: Secure copy files between hosts on a network

```shell
#!/bin/bash

# Copy a file named 'file.txt' from local to remote server using SCP
scp file.txt username@remote_host:/path/to/destination
```

### 43. rsync: Remote file synchronization

```shell
#!/bin/bash

# Synchronize files between two directories using rsync
rsync -avz source_directory/ destination_directory/
```

### 44. wget: Retrieve files from the internet

```shell
#!/bin/bash

# Download a file from a URL using wget
wget http://example.com/file.txt
```

### 45. curl: Transfer data from or to a server

```shell
#!/bin/bash

# Fetch content from a URL using curl
curl http://example.com
```

### 46. ping: Send ICMP Echo Request to network hosts

```shell
#!/bin/bash

# Ping a host to check connectivity
ping -c 4 google.com
```

### 47. traceroute: Print the route packets trace to network host

```shell
#!/bin/bash

# Trace the route to a host
traceroute google.com
```

### 48. ifconfig: Configure network interfaces

```shell
#!/bin/bash

# Display network interface configuration
ifconfig
```

### 49. netstat: Print network connections, routing tables, interface statistics, etc.

```shell
#!/bin/bash

# Display network statistics
netstat -an
```

### 50. ip: Show or manipulate routing, devices, policy routing, and tunnels

```shell
#!/bin/bash

# Display IP addresses and routing information
ip addr show
```

### 51. iwconfig: Configure wireless network interfaces

```shell
#!/bin/bash

# Display wireless network interface configuration
iwconfig
```

### 52. uname: Print system information

```shell
#!/bin/bash

# Display system information
uname -a
```

### 53. date: Print or set the system date and time

```shell
#!/bin/bash

# Display the current date and time
date
```

### 54. cal: Display a calendar

```shell
#!/bin/bash

# Display the current month's calendar
cal
```

### 55. uptime: Show how long the system has been running

```shell
#!/bin/bash

# Display system uptime
uptime
```

### 56. who: Print who is logged in

```shell
#!/bin/bash

# Display information about users currently logged in
who
```

### 57. w: Show who is logged on and what they are doing

```shell
#!/bin/bash

# Display information about users currently logged in and their activities
w
```

### 58. last: Show a listing of last logged in users

```shell
#!/bin/bash

# Display a listing of last logged in users
last
```

### 59. shutdown: Shutdown or restart the system

```shell
#!/bin/bash

# Shutdown the system immediately
shutdown now
```

### 60. reboot: Reboot the system

```shell
#!/bin/bash

# Reboot the system immediately
reboot now
```

### 61. cron: Daemon to execute scheduled commands

```shell
#!/bin/bash

# Edit the crontab file to schedule a command to run at a specific time
crontab -e
```

### 62. crontab: Schedule a command to run at a specific time

```shell
#!/bin/bash

# Schedule a command to run every day at 2:00 AM
echo "0 2 * * * /path/to/command" | crontab -
```

### 63. at: Schedule a command to run once at a specific time

```shell
#!/bin/bash

# Schedule a command to run in 10 minutes
echo "command" | at now + 10 minutes
```

### 64. jobs: Display status of jobs in the current shell

```shell
#!/bin/bash

# Display status of jobs in the current shell
jobs
```

### 65. fg: Bring a background job to the foreground

```shell
#!/bin/bash

# Bring the most recently suspended job to the foreground
fg %1
```

### 66. bg: Send a background job to the background

```shell
#!/bin/bash

# Send the most recently stopped job to the background
bg %1
```

### 67. killall: Kill processes by name

```shell
#!/bin/bash

# Kill all processes named 'process_name'
killall process_name
```

### 68. watch: Execute a program periodically, showing output fullscreen

```shell
#!/bin/bash

# Display system status every 2 seconds
watch -n 2 "ps aux"
```

### 69. clear: Clear the terminal screen

```shell
#!/bin/bash

# Clear the terminal screen
clear
```

### 70. echo: Display a line of text

```shell
#!/bin/bash

# Display a message on the terminal
echo "Hello, world!"
```

### 71. printf: Format and print data

```shell
#!/bin/bash

# Print formatted output
printf "Name: %s\tAge: %d\n" "John" 30
```

### 72. sleep: Suspend execution for a specified time

```shell
#!/bin/bash

# Pause execution for 5 seconds
echo "Waiting for 5 seconds..."
sleep 5
echo "Done!"
```

### 73. exit: Exit the shell

```shell
#!/bin/bash

# Exit the shell script with a success status
exit 0
```

### 74. source: Execute commands from a file in the current shell

```shell
#!/bin/bash

# Source another script file to execute its commands in the current shell
source script.sh
```

### 75. export: Set environment variables

```shell
#!/bin/bash

# Set an environment variable
export MY_VARIABLE="value"
```

### 76. unset: Unset environment variables

```shell
#!/bin/bash

# Unset an environment variable
unset MY_VARIABLE
```

### 77. read: Read a line from standard input

```shell
#!/bin/bash

# Prompt the user to enter their name
echo "Enter your name: "
read name
echo "Hello, $name!"
```

### 78. wait: Wait for a process to complete

```shell
#!/bin/bash

# Start a background process
sleep 10 &
# Wait for the background process to complete
wait
echo "Background process completed."
```

### 79. exec: Execute a command replacing the current process

```shell
#!/bin/bash

# Replace the current process with another command
exec ls
```

### 80. basename: Strip directory and suffix from filenames

```shell
#!/bin/bash

# Extract the basename of a file path
basename /path/to/file.txt
```

### 81. dirname: Strip last component from filenames

```shell
#!/bin/bash

# Extract the directory name from a file path
dirname /path/to/file.txt
```

### 82. expr: Evaluate expressions

```shell
#!/bin/bash

# Perform arithmetic operation using expr
result=$(expr 10 + 20)
echo "Result: $result"
```

### 83. test: Evaluate expression and return an exit status

```shell
#!/bin/bash

# Check if a file exists
if test -e file.txt; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

### 84. [[ ]]: Evaluate conditional expressions (an improved version of test)

```shell
#!/bin/bash

# Check if a file exists
if [[ -e file.txt ]]; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

### 85. seq: Print a sequence of numbers

```shell
#!/bin/bash

# Print a sequence of numbers from 1 to 10
seq 1 10
```

### 86. bc: Command line calculator

```shell
#!/bin/bash

# Perform arithmetic calculation using bc
echo "10 + 20" | bc
```

### 87. yes: Output a string repeatedly until killed

```shell
#!/bin/bash

# Output "yes" indefinitely
yes
```

### 88. factor: Print prime factors of specified integer numbers

```shell
#!/bin/bash

# Print prime factors of the specified integer
factor 100
```

### 89. rev: Reverse lines of a file or files

```shell
#!/bin/bash

# 89. Reverse the content of a file
rev file.txt
```

### 90. paste: Merge lines of files

```shell
#!/bin/bash

# Merge lines from two files side by side
paste file1.txt file2.txt
```

### 91. nl: Number lines of files

```shell
#!/bin/bash

# Number lines of a file
nl file.txt
```

### 92. shred: Overwrite a file to hide its contents

```shell
#!/bin/bash

# Overwrite and delete a file securely
shred -u file.txt
```

### 93. split: Split a file into pieces

```shell
#!/bin/bash

# Split a file into smaller parts
split -b 1M large_file.txt split_
```

### 94. iconv: Convert text from one encoding to another

```shell
#!/bin/bash

# Convert text from UTF-8 to ASCII encoding
iconv -f UTF-8 -t ASCII input.txt > output.txt
```

### 95. diff: Compare files line by line

```shell
#!/bin/bash

# Compare two files and display the differences
diff file1.txt file2.txt
```

### 96. basename: Strip directory and suffix from filenames

```shell
#!/bin/bash

# Extract the base name of a file path
basename /path/to/file.txt
```

### 97. dirname: Strip last component from filenames

```shell
#!/bin/bash

# Extract the directory name from a file path
dirname /path/to/file.txt
```

### 98. iconv: Convert text from one encoding to another

```shell
#!/bin/bash

# Convert text from UTF-8 to ASCII encoding
iconv -f UTF-8 -t ASCII input.txt > output.txt
```

### 99. rev: Reverse lines of a file or files

```shell
#!/bin/bash

# Reverse the content of a file
rev file.txt
```

### 100. paste: Merge lines of files

```shell
#!/bin/bash

# Merge lines from two files side by side
paste file1.txt file2.txt
```

---

## SUMMARY

This Bash course is designed to provide a comprehensive understanding of core concepts and methods within the Bash scripting language, specifically tailored for individuals working in cloud computing and data engineering domains. Through this course, participants will gain proficiency in Bash scripting to automate tasks, manage cloud resources, and streamline data engineering processes.

### Prerequisites
- Basic familiarity with Linux/Unix command-line interface.
- Understanding of cloud computing concepts (e.g., virtual machines, storage, networking).
- Basic knowledge of data engineering principles (e.g., ETL processes, data formats).

### Overview of Bash scripting language
- Setting up the Bash environment
- Basic syntax and command structure
- Working with Files and Directories

### File management in Bash
- Directory navigation and manipulation
- File permissions and ownership
- Shell Scripting Fundamentals

### Variables and data types
- Control structures (loops, conditionals)
- Functions and reusable code
- Automating Cloud Computing Tasks

### Interacting with cloud APIs using Bash
- Managing cloud resources (VMs, storage, networking)
- Scripting common cloud operations (provisioning, deployment, scaling)
- Data Processing with Bash

### Text processing tools (grep, sed, awk)
- Handling structured and unstructured data
- Data transformation and cleansing techniques
- Integration with Data Engineering Workflows

### Bash scripting for ETL (Extract, Transform, Load) processes
- Automating data pipelines
- Error handling and logging in data workflows
- Advanced Bash Scripting

### Shell scripting best practices
- Error handling and debugging techniques
- Performance optimization in Bash scripts
- Case Studies and Real-world Examples

---

# Introduction to Bash Scripting
Bash (Bourne Again SHell) is a popular Unix shell and command language used for executing commands and writing scripts. In this tutorial, we'll cover the basics of Bash scripting, including syntax, variables, control structures, and functions, with detailed code examples.

## Getting Started

Bash is typically available by default on Unix-based systems like Linux and macOS.

Bash commands can be executed directly in the terminal, or you can write scripts containing a series of commands to be executed sequentially. Bash scripts have a .sh extension.

## Variables and Data Types
In Bash, variables are used to store data. Variable names are case-sensitive and can contain letters, numbers, and underscores. No spaces are allowed around the equals sign when assigning values to variables.

### Assigning Variables

```shell
# Assigning values to variables
name="John"
age=30
```

### Data Types

Bash primarily supports strings, integers, and arrays. It doesn't have explicit data types like some other programming languages.

```shell
# String variable
message="Hello, World!"

# Integer variable
count=10

# Array variable
fruits=("apple" "banana" "orange")
```

## Control Structures
Control structures allow you to control the flow of execution in Bash scripts. Common control structures include if statements, loops, and case statements.

### If Statements

```shell
# Simple if statement
if [ "$age" -ge 18 ]; then
    echo "You are an adult."
else
    echo "You are a minor."
fi
```

### Loops

### For Loop

```shell
# For loop to iterate over an array
for fruit in "${fruits[@]}"; do
    echo "I like $fruit"
done
```

### While Loop

```shell
# While loop to print numbers from 1 to 5
num=1
while [ $num -le 5 ]; do
    echo $num
    ((num++))
done
```

## Functions
Functions in Bash allow you to group commands for reuse. They are defined using the function keyword or directly by their name followed by parentheses.

### Function Definition

```shell
# Function to greet someone
greet() {
    local name=$1
    echo "Hello, $name!"
}

# Call the function
greet "Alice"
```

---

Working with Files and Directories
Working with files and directories is a fundamental aspect of Bash scripting. In this tutorial, we'll cover how to manage files and directories using Bash commands, including creating, deleting, navigating, and manipulating them.

1. File Management
1.1 Creating Files
You can create files using the touch command.

bash
Copy code
# Create a new file named "example.txt"
touch example.txt
1.2 Copying Files
Use the cp command to copy files.

bash
Copy code
# Copy a file to another location
cp example.txt new_location/
1.3 Moving/Renaming Files
To move or rename files, use the mv command.

bash
Copy code
# Move a file to a new location
mv example.txt new_location/

# Rename a file
mv example.txt new_name.txt
1.4 Deleting Files
To delete files, use the rm command.

bash
Copy code
# Delete a file
rm example.txt
2. Directory Management
2.1 Creating Directories
You can create directories using the mkdir command.

bash
Copy code
# Create a new directory
mkdir new_directory
2.2 Deleting Directories
To delete directories, use the rmdir command.

bash
Copy code
# Delete an empty directory
rmdir empty_directory
If the directory is not empty, you can use rm -r to recursively delete it.

bash
Copy code
# Delete a directory and its contents
rm -r directory_to_delete
2.3 Navigating Directories
You can navigate directories using the cd command.

bash
Copy code
# Change to a specific directory
cd path/to/directory
To go back to the previous directory, use cd ...

bash
Copy code
# Go back to the previous directory
cd ..
2.4 Listing Contents
To list the contents of a directory, use the ls command.

bash
Copy code
# List files and directories in the current directory
ls
To list hidden files as well, use ls -a.

bash
Copy code
# List all files and directories (including hidden ones)
ls -a

---

Shell Scripting Fundamentals
Shell scripting allows users to automate tasks and execute sequences of commands in Unix-like operating systems. In this tutorial, we'll cover the fundamentals of shell scripting in Bash, including variables, control structures, and functions, with detailed code examples.

1. Variables and Data Types
Variables in shell scripting are used to store data. Bash supports strings, integers, and arrays, although it does not enforce strict typing.

1.1 Assigning Variables
Variables are assigned using the syntax variable_name=value. No spaces are allowed around the equals sign.

bash
Copy code
# Assigning string variable
name="John"

# Assigning integer variable
age=30

# Assigning array variable
fruits=("apple" "banana" "orange")
1.2 Data Types
Bash variables are loosely typed, meaning they can hold different types of data without explicit declaration.

2. Control Structures
Control structures allow for conditional execution and looping in shell scripts.

2.1 If Statements
If statements in Bash have the following syntax:

bash
Copy code
if [ condition ]; then
    # Code block executed if condition is true
else
    # Code block executed if condition is false
fi
bash
Copy code
# Example if statement
if [ "$age" -ge 18 ]; then
    echo "You are an adult."
else
    echo "You are a minor."
fi
2.2 Loops
2.2.1 For Loop
For loops iterate over a list of items.

bash
Copy code
# Example for loop
for fruit in "${fruits[@]}"; do
    echo "I like $fruit"
done
2.2.2 While Loop
While loops execute a block of code as long as a condition is true.

bash
Copy code
# Example while loop
num=1
while [ $num -le 5 ]; do
    echo $num
    ((num++))
done
3. Functions
Functions allow for code reuse by encapsulating a series of commands into a single block.

3.1 Function Definition
Functions are defined using the function keyword or directly by their name followed by parentheses.

bash
Copy code
# Function definition
greet() {
    local name=$1
    echo "Hello, $name!"
}

# Call the function
greet "Alice"


---

Data Processing with Bash
Bash scripting provides powerful tools for processing and manipulating data in various formats. In this tutorial, we'll explore how to perform text processing, handle structured and unstructured data, and apply data transformation and cleansing techniques using Bash scripts, with detailed code examples.

1. Text Processing Tools
Bash provides several built-in tools for text processing, including grep, sed, and awk, which are commonly used to extract, search, and manipulate text data.

1.1 grep
grep is used to search for specific patterns in text data.

bash
Copy code
# Example: Search for lines containing the word "error" in a log file
grep "error" logfile.txt
1.2 sed
sed is a stream editor used for performing basic text transformations.

bash
Copy code
# Example: Replace all occurrences of "old" with "new" in a file
sed 's/old/new/g' file.txt
1.3 awk
awk is a powerful pattern scanning and processing language.

bash
Copy code
# Example: Print the second field of each line in a CSV file
awk -F',' '{print $2}' data.csv
2. Handling Structured Data
Bash scripts can handle structured data formats such as CSV, JSON, and XML.

2.1 CSV
Use awk or cut to extract specific columns from a CSV file.

bash
Copy code
# Example: Extract the second column from a CSV file
awk -F',' '{print $2}' data.csv
2.2 JSON
Parse JSON data using tools like jq.

bash
Copy code
# Example: Extract value of a specific key from a JSON file
jq '.key' data.json
2.3 XML
Parse XML data using tools like xmlstarlet.

bash
Copy code
# Example: Extract value of a specific element from an XML file
xmlstarlet sel -t -v "//element" data.xml
3. Data Transformation and Cleansing
Bash scripting allows for data transformation and cleansing tasks such as formatting, filtering, and deduplication.

3.1 Formatting
Format data using text manipulation tools.

bash
Copy code
# Example: Convert text to uppercase
tr '[:lower:]' '[:upper:]' < input.txt
3.2 Filtering
Filter data based on specific criteria.

bash
Copy code
# Example: Filter lines containing a specific pattern
grep "pattern" file.txt
3.3 Deduplication
Remove duplicate entries from data.

bash
Copy code
# Example: Remove duplicate lines from a file
sort file.txt | uniq
