
# Table of Contents

1.  [Pythons Built-In Functions](#org42eb3e8)
2.  [Writing Your Own Functions](#org72903ec)
3.  [Global and Local Scopes](#org9727e83)



<a id="org42eb3e8"></a>

# Pythons Built-In Functions

Python comes with many built in functions such as print, input, and len which we have already used. Python also comes with Modules known as the Standard Library. For example, we have the Math module containing mathematics functions, the random module containing random number functions, etc. In order to use functions from these modules, we need to import them as follows:

    
    import random
    
    print(random.randint(1,10))

    4

The above randint function gives us a random number between the given integers. We need to preface the randint function by &ldquo;random&rdquo; since it is inside of the random module. It is not a built-in function, so Python will not find it without first calling the random module. Python&rsquo;s standard library has many such modules that can be imported via the import statement.

We can also import statements in a different way &ldquo;from random import \*&rdquo; which removes the need to put in &ldquo;random&rdquo; before calling the function. However, this can decrease readibility as you do not know which module the function comes from.

    
    from random import *
    
    print(randint(1,10))

    5

Sometimes you want to terminate a program early. There is a function for this in the &ldquo;sys&rdquo; module. The &ldquo;sys.exit&rdquo; function.

    
    import sys
    
    print("Hello")
    
    sys.exit()
    
    print("Goodbye")

    Hello

As we can see above, the &ldquo;Goodbye&rdquo; string was not printed. This is due to the fact that we used the exit function and terminated the program early.

While Python comes with several modules in the standard library, we can also install new modules using the pip program.

    pip install pyperclip

The pyperclip module contains 2 functions, the copy and paste functions which can be used to copy and paste text.

    
    import pyperclip
    
    pyperclip.copy("Hello world!")
    print(pyperclip.paste())

    Hello world!


<a id="org72903ec"></a>

# Writing Your Own Functions

A function is like a mini program inside of a program containing code that runs when the function is called.

    
    def hello():
        print("Howdy!")
        print("Howdy!!!")
        print("Hello there.")
    
    hello()
    hello()
    hello()

    Howdy!
    Howdy!!!
    Hello there.
    Howdy!
    Howdy!!!
    Hello there.
    Howdy!
    Howdy!!!
    Hello there.

When a function is defined using the &ldquo;def&rdquo; statement, the code inside of it is not executed. The code inside the function is only executed when the function is called.

One of the benefits of functions is that it lets you avoid duplicating code. Duplication can be an issue because when you find a bug in the code, you need to make sure you fix it everywhere. With functions, you can just fix the function itself.

Our functions can also contain arguments that our function can use, for example the argument given in a &ldquo;print&rdquo; or &ldquo;len&rdquo; function.

    
    def hello(name):
        print("Hello " + name)
    
    hello("Alice")
    hello("Bob")

    Hello Alice
    Hello Bob

Above when the &ldquo;hello&rdquo; function is called, the argument is passed into the function and used as the name variable.

    
    def plusOne(number):
        return number+1
    
    
    newNumber=plusOne(5)
    
    print(newNumber)

    6

What does the print function return?

The function returns a special value of a data type &ldquo;None&rdquo;. It represents a lack of a data type.

    
    spam=print()
    
    print(type(spam))

    
    <class 'NoneType'>

We can take away from this the fact that every function call has some sort of return value, including the print function. When a function does not have a return statement, the return value defaults to &ldquo;None&rdquo;, as in the print function.

Some functions have keyword arguments. These can be optional arguments, for example the print function adds a new line after you call the function. However, this can be changed as seen below. We can also choose what separates the separating character between the arguments.

    
    print("Hello")
    print("World")
    
    
    print("Hello", end="")
    print("World")
    
    
    print("cat", "dog", "mouse")
    
    
    print("cat", "dog", "mouse", sep="ABC")

    Hello
    World
    HelloWorld
    cat dog mouse
    catABCdogABCmouse


<a id="org9727e83"></a>

# Global and Local Scopes

Variables inside of a function can have the same name as variables inside of a function. This is due to the fact that some variables and parameters have a local scope and others have a global scope. Variables that are assigned inside of a function exist inside of the function&rsquo;s local scope while variables that are assigned outside of functions exist in the program&rsquo;s global scope which means they can be accessed from anywhere in the program. Any given line in the program is either in the global scope or inside of a local scope.

Scopes can be thought of containers for variables. All variables existing in the global scope are global variables while variables existing in a local scope are local variables.

There are a few reasons why local and global scopes matter.

1.  Code in a global scope can&rsquo;t use local variable.
2.  Code in a local scope can use global variables.
3.  Code in one function&rsquo;s local scope can&rsquo;t use variables in another local scope.
4.  You can use the same name for variables given that they are in a different scope.

