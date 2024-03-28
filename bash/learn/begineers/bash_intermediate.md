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

# Advanced Bash Scripting

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
