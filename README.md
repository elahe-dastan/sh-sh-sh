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
