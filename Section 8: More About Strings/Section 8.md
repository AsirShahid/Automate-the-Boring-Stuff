
# Table of Contents

1.  [Advanced String Syntax](#orge2dea03)
    1.  [Escape Characters](#org6a36aef)
    2.  [Raw Strings](#org2e93785)
    3.  [Multiline Strings with Triple Quotes](#org18a7eaf)
    4.  [Similarities Between Strings and Lists](#org0971682)



<a id="orge2dea03"></a>

# Advanced String Syntax

Text is one of the most common forms of data that we will work with.

How do we add quotes and apostrophes in Python Strings?


<a id="org6a36aef"></a>

## Escape Characters

    
    print("Hello")
    print('That is Alice\'s cat')
    print('Say hi to Bob\'s mother')

    Hello
    That is Alice's cat
    Say hi to Bob's mother

We can have several different types of escape characters.

1.  \\&rsquo; - Prints as Single quote
2.  \\&ldquo; - Prints as Double quote
3.  \t - Prints as tab
4.  \n - Prints as newline
5.  \\\\ - Prints as backslash.

    
    print("Hello there!\nHow are you?\nI\'m fine")

    Hello there!
    How are you?
    I'm fine


<a id="org2e93785"></a>

## Raw Strings

We can also have raw strings which should be used when we have text that includes many backslashes that we don&rsquo;t want to use for escape characters. There are similar to regular strings, but have &ldquo;r&rdquo; right at the beginning.

    
    print(r"Hello")
    print(r"That is Carol\'s cat.")

    Hello
    That is Carol\'s cat.


<a id="org18a7eaf"></a>

## Multiline Strings with Triple Quotes

Instead of using \n in order to put a newline in the string, it can be easier to use multiline strings.

    
    print("""Dear Alice,
    Eve's cat has been arrested for catnapping, cat burgularly, and extortion.
    Sincerly,
    Bob""")

    Dear Alice,
    Eve's cat has been arrested for catnapping, cat burgularly, and extortion.
    Sincerly,
    Bob

Above, Python automatically formats this using \n and \t in the background.


<a id="org0971682"></a>

## Similarities Between Strings and Lists

Strings can use indices and slices similar to lists. The string &ldquo;Hello&rdquo; can be seen as a list with 5 items, each of which are individual strings.

    
    spam="Hello world!"
    
    print(spam[0])
    print(spam[1:5])
    print(spam[-1])
    
    print("Hello" in spam)
    print("x" in spam)
    print("HELLO" in spam)

    H
    ello
    !
    True
    False
    False

