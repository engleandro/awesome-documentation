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
