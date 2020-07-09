# Getting Started with scripting

## Input and output redirection

```bash
cat ../datafiles/cities.txt > /dev/stdout
# output sorted cites in file
sort < ../datafiles/cities.txt > sorted_cites.txt

# Grep cities ignorecase which start with "t"
grep -i "t" < ../datafiles/cities.txt

#Find file which hold more that 8 char
find ./ -size +8c

# skip error messages (supress error to null device)
find / -user suku 2> /dev/null

#tee command reads the standard input and writes it to both the standard output and one or more files.
find ./ -size +8c | tee user_files.txt
```

## Controlling and Manipulating Running Scripts
                
Command                                  | Key binding
-------------                            | -------------
To pause long running script or process  | Control + S
Find stop Jobs                          | jobs 
Resume stop job                         | bg [job no]
Runs script in background                    | ./abc.sh $
To kill a job                             | kill %[job no]
Detach bg running job                            | diswon -h %1

> Note: To pause long running script or process


## Variables

> Last executed command is successful or not 
>>echo $?

> [./machine-stats.sh](https://github.com/suku19/bash-scripting/blob/master/01-variable-and-args/machine-stats.sh)

#### Using and manipulating variables

> [./vars_output.sh](https://github.com/suku19/bash-scripting/blob/master/01-variable-and-args/vars_output.sh) - built in variables

#### Pass the variable

>[./call_export_var.sh](https://github.com/suku19/bash-scripting/blob/master/01-variable-and-args/call_export_var.sh)
>[./export_var.sh](https://github.com/suku19/bash-scripting/blob/master/01-variable-and-args/export_var.sh) 

#### Variable scope
>[./scope.sh](https://github.com/suku19/bash-scripting/blob/master/03-function/scope.sh) - variable scope within a function

#### Formatting variable output

```bash
#Date format
 date +'%Y-%m-%d'
#Formatiing using printf
 costcenter= "Toronto"
 printf "%.3s\n" $costcenter
 namvar=5.5
 printf "%f\n" $namvar
```
## Creating and using function

+ [. ./func_lib1.sh](https://github.com/suku19/bash-scripting/blob/master/03-function/func_lib1.sh) - . sourcing lib function

+ [func_args.sh](https://github.com/suku19/bash-scripting/blob/master/03-function/func_args.sh) - return a value from function

## Flow control

#### if-else

+ [if.sh](https://github.com/suku19/bash-scripting/blob/master/04-flow-control/if.sh) - test the condition (if-else)

>For more test option read the test manual
```bash
man test
```

##### Comparison operator
```bash
citycode="hfx"
projdays=4

if test $citycode = "hfx" && test $projdays -eq 4;
then echo "All ture"
fi

if test $citycode = "hfx" || test $projdays -eq 5;
then echo "At least one condition is true"
fi
```

#### for loop
+ [for.sh](https://github.com/suku19/bash-scripting/blob/master/04-flow-control/for.sh) - total size of files in current directory

#### for loop on an array

```bash
cities=("Glasgow" "Kolkata")
echo "Second city is: "${cities[1]}

for ((i=0; i<${#cities[@]}; i++))
do
    echo ${cities[$i]}
done
```

#### while loop

+ [while.sh](https://github.com/suku19/bash-scripting/blob/master/04-flow-control/while.sh) - select an option, 1 to exit

+ [while_break.sh](https://github.com/suku19/bash-scripting/blob/master/04-flow-control/while_break.sh) - type exit to break the loop

+ [readfile.sh](https://github.com/suku19/bash-scripting/blob/master/04-flow-control/readfile.sh) - read each line from a file

#### Case statement

+ [case.sh](https://github.com/suku19/bash-scripting/blob/master/04-flow-control/readfile.sh) 

## Data types

#### Creating and Manipulating Arrays

```bash
depts=("it" "hr" "sales")

#Print all the item of an array
echo ${depts[*]}

# print individual element
echo ${depts[2]}

#Add and element
depts[3]="exac"

# length of an array
echo ${#depts[@]}

# get the last 2 element
echo ${depts[*]:2:2}

# replacing an element will create a new array
echo ${depts[*]/sales/marketing}

#sort an array (<<< input redirection for string)
sort <<< "${depts[*]}"
```

#### Performing Math Operation
>**Note** : Bash shell does not handle floating point values by default. Need to install basic calculator tool.

```bash
echo "34*4.6" | bc
```

+ [paycheck.sh](https://github.com/suku19/bash-scripting/blob/master/05-datatypes/paycheck.sh) - calculate the total paycheck

#### Converting Numbers

