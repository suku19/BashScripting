# Getting Started with scripting

## Input and output redirection

```bash
cat cities.txt > /dev/stdout
# output sorted cites in file
sort < cities.txt > sorted_cites.txt

# Grep cities ignorecase which start with "t"
grep -i "t" < cities.txt

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
