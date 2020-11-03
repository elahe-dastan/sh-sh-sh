# SH_SH_SH
It's a shame that I don't know how to write a simple shell script so please don't tell it to anyone, shhh.

# subshell
I had a valuable experience that I'd like to share in here and it's all based on subshells. It's importnat to understand 
the concept.<br/>
Definition: A subshell is a child process launched by a shell(or shell script).
Now let me go through an example, open a terminal and write a=b then echo the variable a as you expected it says b now 
write a bash script that has this command 'echo $ a' then in your terminal set a=b and then run your script you see?! the 
script is called a subshell and doesn't know that you have set a=b in the parent shell, it you like the child processes 
to be aware of this you have to use export command.<br/>
**Notice**: **every command** forks a child process that's why if you set a=b then run the command 'env' you can't find 
the key value pair in it cause 'env' runs a subshell.

#### Set environment variables from file of key/value pairs
check pairs.sh

# Env
It's important to know that every environment variable can only be seen in the same shell it is defined or at most in it's
subshells. If it's still ambiguous open a terminal and export something then run env command you can see the environment 
you just set now open another terminal and run the env command agan, tadaaa it's not present any more. Now you may ask 
what about the environment variables that are always there how are they set they are set in config file of shell so 
everytime you open a terminal the config file is read and those environments are set.

# shell vs bash
Yes they are different, you may not know that, if you always run your bash scripts on your own computer, trouble begins 
when you want to run the script on other computers, that's what happened for me I wrote a bash script that was working 
fine locally but when I pushed the file in gitlab and tried to run that on a server it failed so pay attention.<br/>
I don't know much more about them but if you want your script to be portable `sh` is portable across POSIX systems even 
if they happen not to have `bash`, they are required to have `sh`.<br/>

### sed
sed command is mostly used for substitution. Look at this example `sed 's/a/b/' file.txt` the "s" specifies the substitution 
operation, the "/" are delimiters.**Note**:the sed command replaces the first occurrence of the pattern in each line, to 
replace all the occurrences use `sed 's/;/,/g' sed.txt`. To change the file use `-i`.
