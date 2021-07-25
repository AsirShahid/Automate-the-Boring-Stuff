
# Table of Contents

1.  [Basic Terminology](#org1566930)
2.  [Writing our First program](#orgcd4348e)



<a id="org1566930"></a>

# Basic Terminology

    print(2+2)

    4

The above is an expression consisting of operators (such as the +) and values (such as the 2). Expressions always evaluate down to a single value.

    print(2)
    print(5-3)
    print(3*7)
    print(22/7)

    2
    2
    21
    3.142857142857143

The order of operations follow PEMDAS, so we can use parentheses in order to show what we really want.

    print(2+3*6)
    print((2+3)*6)

    20
    30

We can get errors when we mess things up

    print(5+)

We can have strings and they can also be concatenated or replicated.

    print("Hello World")
    print("Alice" + "Bob")
    print("Alice"*3)
    print("Hello" + "!"*10)

    Hello World
    AliceBob
    AliceAliceAlice
    Hello!!!!!!!!!!

Python can store values inside of variables. Usually it is smart to name variables that describe the values that they contain. Variables can also be overwritten easily.

    spam=42
    print(spam)
    spam="Hello"
    print(spam)
    print(spam + " World")

    42
    Hello
    Hello World

Variables can also be set to different expressions. The expression will be evaluated and then that value will be set to the variable.

    spam=2+2
    print(spam)
    spam=10
    print(spam)
    spam=spam+1
    print(spam)

    4
    10
    11


<a id="orgcd4348e"></a>

# Writing our First program

    # When using Python outside of org mode, we use a different way to get inputs
    # name=input()
    
    print("Hello World")
    
    print("What is your name?")
    
    print("It is good to meet you, {}".format(name))
    # Alternatively, we could concatenate
    # print("It is good to meet you, " + name)
    print("The length of your name is: {}".format(str(len(name))))
    
    print("You will be {} in a year".format(str(int(age)+1)))

    Hello World
    What is your name?
    It is good to meet you, Asir
    The length of your name is: 4
    You will be 23 in a year

