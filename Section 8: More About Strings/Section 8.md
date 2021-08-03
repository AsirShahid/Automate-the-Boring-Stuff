
# Table of Contents

1.  [Advanced String Syntax](#orgabcf177)
    1.  [Escape Characters](#org96f3dc5)
    2.  [Raw Strings](#org8953111)
    3.  [Multiline Strings with Triple Quotes](#orga0cc8e7)
    4.  [Similarities Between Strings and Lists](#orgeb1fa10)
2.  [String Methods](#orgce53b95)
    1.  [upper(), lower()](#org233a38a)
    2.  [isupper(), islower()](#org8f2821a)
    3.  [The isX() methods](#org3e34923)
    4.  [startswith(), endswith()](#org0cba644)
    5.  [join() and split()](#org7074be4)
    6.  [rjust(), ljsut(), center()](#orgb63999a)
    7.  [strip(), rstrip(), lstrip()](#orgc4f03e0)



<a id="orgabcf177"></a>

# Advanced String Syntax

Text is one of the most common forms of data that we will work with.

How do we add quotes and apostrophes in Python Strings?


<a id="org96f3dc5"></a>

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


<a id="org8953111"></a>

## Raw Strings

We can also have raw strings which should be used when we have text that includes many backslashes that we don&rsquo;t want to use for escape characters. There are similar to regular strings, but have &ldquo;r&rdquo; right at the beginning.

    
    print(r"Hello")
    print(r"That is Carol\'s cat.")

    Hello
    That is Carol\'s cat.


<a id="orga0cc8e7"></a>

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


<a id="orgeb1fa10"></a>

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


<a id="orgce53b95"></a>

# String Methods

Unlike list methods, string methods return a new string value rather than modifying the existing string in place. This is due to the fact that strings are immutable.


<a id="org233a38a"></a>

## upper(), lower()

    
    spam="Hello world!"
    
    spam.upper()
    
    print(spam)
    
    spam=spam.upper()
    
    print(spam)
    
    spam=spam.lower()
    
    print(spam)

    Hello world!
    HELLO WORLD!
    hello world!

This can be helpful when we allow the user to input an answer and we do not care about uppercase or lowercase. There is also a corresponding title() method.


<a id="org8f2821a"></a>

## isupper(), islower()

These methods return a boolean value depending on whether the strings are uppercase or lowercase. If we have a blank string or a string without any uppercase or lowercase characters, both isupper() and islower() will be false.

    
    spam="Hello world"
    
    print(spam.islower())
    
    spam="hello world"
    
    print(spam.islower())
    
    spam="HELLO WORLD"
    
    print(spam.isupper())

    False
    True
    True

We can also call both upper() and isupper() on the same string.

    
    print("Hello".upper().isupper())

    True


<a id="org3e34923"></a>

## The isX() methods

There are several other string methods that begin with is and return a boolean.

1.  isalpha() Returns True if the string consists only of letters and isn’t blank

2.  isalnum() Returns True if the string consists only of letters and numbers and is not blank

3.  isdecimal() Returns True if the string consists only of numeric characters and is not blank

4.  isspace() Returns True if the string consists only of spaces, tabs, and newlines and is not blank

5.  istitle() Returns True if the string consists only of words that begin with an uppercase letter followed by only lowercase letters

    
    print("hello".isalpha())
    print("hello123".isalnum())
    print("123".isdecimal())
    print("    ".isspace())
    print("Hello world!".isspace())
    print("Hello world!"[5].isspace())
    print("This Is Title Case!".istitle())

    True
    True
    True
    True
    False
    True
    True


<a id="org0cba644"></a>

## startswith(), endswith()

These return true if the string value that they are called on begins or ends, respectively, with the string that is passed to the method.

    
    print("Hello world!".startswith("Hello"))
    print("Hello world!".startswith("h"))
    print("Hello world!".startswith("ello"))
    
    print("Hello world!".endswith("world!"))
    print("Hello world!".endswith("world"))
    print("Hello world!".endswith("!"))

    True
    False
    False
    True
    False
    True


<a id="org7074be4"></a>

## join() and split()

The join() method is useful when we have a list of strings that need to be joined together into a single string value. It gets passed a list of strings and returns a string.

    
    print(",".join(["cats","rats","bats"]))
    
    print("".join(["cats","rats","bats"]))
    
    print(" ".join(["cats","rats","bats"]))
    
    print("\n\n".join(["cats","rats","bats"]))

    cats,rats,bats
    catsratsbats
    cats rats bats
    cats
    
    rats
    
    bats

The split method does the opposite. It is called on a string value and returns a list of strings.

    
    print("My name is Simon".split())
    
    print("My name is Simon".split("m"))
    
    print("My name is Simon".split("!"))

    ['My', 'name', 'is', 'Simon']
    ['My na', 'e is Si', 'on']
    ['My name is Simon']


<a id="orgb63999a"></a>

## rjust(), ljsut(), center()

rjust() and ljust() return a padded version of the string they are called upon in order to either right or left justify the string. They take an argument that dictates the character length of the justification. We can also give an argument to change the character that is used for the justification.

The center method works similarly, but it centers the text instead of justifying to the right or left.

    
    print("Hello".rjust(10))
    print("Hello".rjust(30))
    print("Hello".ljust(10))
    
    print("Hello".rjust(20, "*"))
    print("Hello".ljust(10, "-"))
    
    print("Hello".center(20))
    print("Hello".center(20,"*"))
    print("Hello".center(20,"="))

         Hello
                             Hello
    Hello     
    ***************Hello
    Hello-----
           Hello        
    *******Hello********
    =======Hello========


<a id="orgc4f03e0"></a>

## strip(), rstrip(), lstrip()

These methods can be used when we want to strip off whitespace characters like spaces, tabs, or new lines.

