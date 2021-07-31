
# Table of Contents

1.  [Pythons Built-In Functions](#org77de8aa)



<a id="org77de8aa"></a>

# Pythons Built-In Functions

Python comes with many built in functions such as print, input, and len which we have already used. Python also comes with Modules known as the Standard Library. For example, we have the Math module containing mathematics functions, the random module containing random number functions, etc. In order to use functions from these modules, we need to import them as follows:

    
    import random
    
    print(random.randint(1,10))

    10

The above randint function gives us a random number between the given integers. We need to preface the randint function by &ldquo;random&rdquo; since it is inside of the random module. It is not a built-in function, so Python will not find it without first calling the random module. Python&rsquo;s standard library has many such modules that can be imported via the import statement.

We can also import statements in a different way &ldquo;from random import \*&rdquo; which removes the need to put in &ldquo;random&rdquo; before calling the function. However, this can decrease readibility as you do not know which module the function comes from.

    
    from random import *
    
    print(randint(1,10))

    2

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

