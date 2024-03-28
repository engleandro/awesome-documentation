# BASH: the Bourne Again SHell

## References:
- [Bash Official](https://www.gnu.org/software/bash/)

## Getting Started

Bash, short for "Bourne Again Shell," is a powerful scripting language commonly used on Unix-like operating systems.

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
