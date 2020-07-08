### Using input and output redirection


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

### Controlling and Manipulating Running Scripts
                
Command                                  | Key binding
-------------                            | -------------
To pause long running script or process  | Control + S
Find stop Jobs                          | jobs 
Resume stop job                         | bg [job no]
Runs script in background                    | ./abc.sh $
To kill a job                             | kill %[job no]
Detach bg running job                            | diswon -h %1

> To pause long running script or process


### Working with buil-in variables

> Last executed command is successful or not 
>>echo $?

> ./machine-stats.sh

### Using and manipulating variables

> ./vars_output.sh 

#### Pass the variable

>./call_export_var.sh
>>export_var.sh

> Variable scope
>>./scope.sh

### Formatting variable output

```bash
#Date format
 date +'%Y-%m-%d'
#Formatiing using printf
 costcenter= "Toronto"
 printf "%.3s\n" $costcenter
 namvar=5.5
 printf "%f\n" $namvar
```
### Creating and using function

#### . sourcing lib function

> . ./func_lib1.sh
>userinfo
>ipinfo

