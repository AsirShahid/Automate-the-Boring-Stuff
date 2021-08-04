
# Table of Contents

1.  [Filenames and Absolute/Relative File Paths](#org92c611e)
    1.  [Fileames and File Paths](#org720b2e7)
    2.  [os module](#orgf13227c)
        1.  [os.getcwd()](#orgac7d73f)
        2.  [os.chdir()](#org69e9bce)
    3.  [Absolute and Relative Paths](#org22c1764)
    4.  [. and .. Folders](#org97f7908)
    5.  [os.path module](#org3be1a26)
        1.  [os.path.join()](#orga77db41)
        2.  [os.path.abspath()](#org0883a5e)
        3.  [os.path.isabs()](#org090df3e)
        4.  [os.path.relpath()](#org77df3c6)
        5.  [os.path.dirname()](#orgb577abb)
        6.  [os.path.basename()](#org2579330)
        7.  [os.path.exists()](#org0e57d2b)
        8.  [os.path.isfile()](#org5643c61)
        9.  [os.path.isdir()](#org9f214ee)
        10. [os.path.getsize()](#org9c28ae2)
    6.  [os.listdir()](#org3f0ac15)
    7.  [Example Code: Finding the total size of all files in a folder.](#org7e85c54)
    8.  [os.makedirs()](#orgfc608fc)
2.  [Reading and Writing Plaintext Files](#org840ee7e)
    1.  [Plaintext and Binary Files](#org49145c2)
    2.  [Reading or Writing Files in Python](#orgc233efc)
        1.  [The open() Function](#org34e9811)
        2.  [Read Mode](#org40282a4)
        3.  [The read() method](#orga8fb11d)
        4.  [The close() method](#orgab18b98)
        5.  [The readlines() Method](#orgddeb82b)
        6.  [Write mode](#org856f1ed)
        7.  [Append mode](#org9d2669e)
        8.  [Example](#org78edab6)
    3.  [The shelve Module](#orgb04ce7d)
        1.  [The shelve.open() Method](#org5529bd3)
        2.  [The keys() and values() Shelf Methods](#org6c275c0)
3.  [Copying and Moving Files and Folders](#org1709a94)
    1.  [Shell Utilities Module](#org52917b7)
        1.  [shutil.copy() Function](#orgadeb74c)
        2.  [shutil.copytree() Function](#orgc47fc84)
        3.  [shutil.move() function](#org425def8)



<a id="org92c611e"></a>

# Filenames and Absolute/Relative File Paths

We&rsquo;ll learn about files, folders, and how Python can work with them.

If we want our data to persist after our program is finished, we need to save it to a file.


<a id="org720b2e7"></a>

## Fileames and File Paths

Each of our files has 2 key properties. The file name and the file path.


<a id="orgf13227c"></a>

## os module

The os module contains numerous file path related functions that we can use.


<a id="orgac7d73f"></a>

### os.getcwd()

Every program has a setting called the current working directory, this tells us the directory that we are currently in. We can use the getcwd() function in order to find our current working directory.

    
    import os
    
    print(os.getcwd())

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files


<a id="org69e9bce"></a>

### os.chdir()

We can also change the current working directory using this chdir() function.

    
    import os
    
    print(os.getcwd())
    
    os.chdir("/")
    
    print(os.getcwd())

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files
    /


<a id="org22c1764"></a>

## Absolute and Relative Paths

There are two kinds of file paths, relative and absolute. The absolute file path begins with the root directory and gives you the complete location of the file. A relative file path is relative to the current working directory.


<a id="org97f7908"></a>

## . and .. Folders

These are not real directories, but they can be used with relative paths. The single dot stands for this directory while two dots stands for the paret directory, the directory that your current working directory is in.


<a id="org3be1a26"></a>

## os.path module


<a id="orga77db41"></a>

### os.path.join()

This is a join function inside of a path module inside of an os module. It takes several string arguments and returns a string value of a path for the os that you are using.

    
    import os
    print(os.path.join("folder1","folder2","folder3","file.png"))

    folder1/folder2/folder3/file.png


<a id="org0883a5e"></a>

### os.path.abspath()

The abspath() function will return the absolute path of the path that you pass it.

    
    import os
    
    print(os.path.abspath("Section 11.org"))

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org


<a id="org090df3e"></a>

### os.path.isabs()

The isabs() function is a way to determine if a given path is absolute.

    
    import os
    
    print(os.path.abspath("Section 11.org"))
    
    print(os.path.isabs("Section 11.org"))
    
    print(os.path.abspath("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.isabs("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org
    False
    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org
    True


<a id="org77df3c6"></a>

### os.path.relpath()

This function will give you the relative path between two paths. The first argument is the file/directory we want to get to and the second is the directory we are already in.

    
    import os
    
    print(os.path.relpath("Section 11.org", "/usr/bin"))
    
    print(os.path.relpath("Section 11.org", "/home/mohammeds/"))

    ../../home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org
    Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org


<a id="orgb577abb"></a>

### os.path.dirname()

This function pulls out just the directory part of the path.

    
    import os
    
    print(os.path.dirname("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files


<a id="org2579330"></a>

### os.path.basename()

This function pulls out just the last part of the path. Either the filename or just the directory itself if there is no file in the path.

    
    import os
    
    print(os.path.basename("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    Section 11.org


<a id="org0e57d2b"></a>

### os.path.exists()

This function can check and see if the path you are passing actually exists.

    
    import os
    
    print(os.path.exists("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.exists("/home/mohammeds/Fake File Path"))

    True
    False


<a id="org5643c61"></a>

### os.path.isfile()

We can use this function to see if what we pass to it is a file or not.

    
    import os
    
    print(os.path.isfile("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.isfile("/home/mohammeds/Fake File Path"))

    True
    False


<a id="org9f214ee"></a>

### os.path.isdir()

We can use this function to see if what we pass to it is a directory or not.

    
    import os
    
    print(os.path.isdir("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.isdir("/home/mohammeds/"))

    False
    True


<a id="org9c28ae2"></a>

### os.path.getsize()

This function gives us the size of the file in bytes.

    
    import os
    
    print(os.path.getsize("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    13214


<a id="org3f0ac15"></a>

## os.listdir()

This function isn&rsquo;t in the path module. It can be passed a file path of a folder and then it&rsquo;ll return a list of strings of the filenames and folder names that it contains.

    
    import os
    
    print(os.listdir("/home/mohammeds/Documents"))

    ['[Chapman and Hall_CRC the R Ser] Albert, Jim_ Baumer, Benjamin S._ Marchi, Max - Analyzing Baseball Data with R (2018, Chapman and Hall_CRC) - libgen.lc.pdf', 'bedrock-linux-0.7.20beta1-x86_64.sh', 'fstab.txt', 'Verify Payment.pdf', 'mission-369-advanced-regular-expressions-takeaways.pdf', 'userguide.pdf', 'Quidditch Through the Ages - J.K. Rowling.pdf', 'Resume', 'SmashCharacters.txt', 'LFS-BOOK-10.1.pdf', 'Linux From Scratch - Version 10.1 - LFS-BOOK-10.1.pdf', 'Oathbringer_ Book Three of the Stormlight Archive_B01NAWAH85.kfx', 'Andrew Ng Machine Learning Lectures', 'Hugo Websites', 'Data Scientist in Python DataQuest', 'mohammed-shahid-python-for-data-science-fundamentals.pdf', 'README.md', '.git', 'mkdir', 'Crypto Trading Bot', 'Machine Trading', 'The Home Depot - Order Confirmation.pdf', 'Online Return Center.pdf', 'LeetCode', 'Kaggle', 'Coursera', 'Data Analyst in R DataQuest', 'edX', 'org-basics.org', 'happybday.org', 'org', 'letter.org', 'AB_NYC_2019.csv', 'cse351_hw1_fazli_faraz_110018236.ipynb', '.ipynb_checkpoints', 'mariaradio.org', '.auctex-auto', 'mariaradio.tex', 'mariaradio.pdf', 'mariaradio.md', 'mariaradio.html', 'Order Confirmation _ Law School Admission Council.pdf', 'marialetter.org', 'Automate the Boring Stuff', 'TEKgence Application Form.xlsx', '.dir-locals.el']


<a id="org7e85c54"></a>

## Example Code: Finding the total size of all files in a folder.

    
    import os
    
    totalSize=0
    
    for file in os.listdir("/home/mohammeds/Documents"):
        if not os.path.isfile(os.path.join("/home/mohammeds/Documents", file)):
            continue
        totalSize+=os.path.getsize(os.path.join("/home/mohammeds/Documents", file))
    
    print(totalSize)

    382371482


<a id="orgfc608fc"></a>

## os.makedirs()

This function can create directories for you.

    
    import os
    
    print(os.getcwd())
    
    print(os.listdir())
    
    os.makedirs("TestDir")
    
    print(os.listdir())


<a id="org840ee7e"></a>

# Reading and Writing Plaintext Files

We can start writing strings to files that we create in order to save information. We can then read this data with Python.


<a id="org49145c2"></a>

## Plaintext and Binary Files

Plaintext files only contain basic text characters and don&rsquo;t include information about color or font. Often times they have .txt extensions. Python scripts are also plain text files, except they use the .py file extension.

They can be opened with text editors such as Emacs.

Binary files are all other types of files. PDF, JPG, PNG, etc. When you open these with a text editor, it will be impossible to understand.


<a id="orgc233efc"></a>

## Reading or Writing Files in Python

There are three main steps for reading and writing files in Python.


<a id="org34e9811"></a>

### The open() Function

This function opens files.

    
    open("hello.txt")


<a id="org40282a4"></a>

### Read Mode

The open() function opens the file in read mode. This only lets you read the data, it does not let you modify it.


<a id="orga8fb11d"></a>

### The read() method

This method lets you read the opened file.


<a id="orgab18b98"></a>

### The close() method

This method closes the opened file. If you want to continue accessing it, you should save it to a variable.

    
    helloFile=open("hello.txt")
    
    
    content=helloFile.read()
    
    print(content)
    
    helloFile.close()

    Hello!
    How are you?How are you?How are you?How are you?


<a id="orgddeb82b"></a>

### The readlines() Method

This method returns all of the lines as strings within a list.

    
    helloFile=open("hello.txt")
    content=helloFile.readlines()
    
    print(content)

    ['Hello!\n', 'How are you?How are you?How are you?How are you?']


<a id="org856f1ed"></a>

### Write mode

In order to write to a file, it needs to be opened in write or append mode. This can overwrite existing files. For write mode, you can pass in a &ldquo;w&rdquo; argument to the open() function.

    
    helloFile=open("hello2.txt","w")
    helloFile.write("Hello!!!!")


<a id="org9d2669e"></a>

### Append mode

In order to write to a file, it needs to be opened in write or append mode. This can overwrite existing files. For append mode, you can pass in a &ldquo;a&rdquo; argument to the open() function.

    
    helloFile=open("hello.txt", "a")
    helloFile.write("How are you?")


<a id="org78edab6"></a>

### Example

    
    
    baconFile=open("bacon.txt", "w")
    
    baconFile.write("Bacon is not a vegetable")
    baconFile.close()
    
    baconFile=open("bacon.txt")
    
    print(baconFile.read())

    Bacon is not a vegetable


<a id="orgb04ce7d"></a>

## The shelve Module

Writing and reading text files is a good way to store single long strings, but if we want to save more complex data structures like lists and dictionaries, then we can save Python programs to binary shelve files.


<a id="org5529bd3"></a>

### The shelve.open() Method

This method can open shelve files.

    
    import shelve
    
    shelfFile=shelve.open("mydata")
    shelfFile["cats"]=["Zophie","Pooka","Simon","Fat-tail","Cleo"]
    shelfFile.close()
    
    shelfFile=shelve.open("mydata")
    print(shelfFile["cats"])

    ['Zophie', 'Pooka', 'Simon', 'Fat-tail', 'Cleo']

The benefit of using the shelve module is that you can store lists, dictionaries, and non text data and then reopen them in the future.


<a id="org6c275c0"></a>

### The keys() and values() Shelf Methods

Shelf file objects are very similar to dictionaries in the sense that they have keys and values.

    
    import shelve
    
    shelfFile=shelve.open("mydata")
    
    print(shelfFile.keys())
    print(shelfFile.values())
    
    
    print(list(shelfFile.keys()))
    print(list(shelfFile.values()))
    
    shelfFile.close()

    KeysView(<shelve.DbfilenameShelf object at 0x7faac2fbb130>)
    ValuesView(<shelve.DbfilenameShelf object at 0x7faac2fbb130>)
    ['cats']
    [['Zophie', 'Pooka', 'Simon', 'Fat-tail', 'Cleo']]


<a id="org1709a94"></a>

# Copying and Moving Files and Folders

We can also organize files on our drive using Python.


<a id="org52917b7"></a>

## Shell Utilities Module

This module has functions that let us copy, rename, and delete files in Python programs.


<a id="orgadeb74c"></a>

### shutil.copy() Function

This function lets us copy files in Python. We can either copy and leave the filename or copy and give a new file name.

    
    import shutil,os
    
    shutil.copy("hello2.txt", "TestDir")
    
    shutil.copy("hello2.txt", "TestDir/newhello2.txt")
    
    print(os.listdir("TestDir"))

    ['hello2.txt', 'newhello2.txt']


<a id="orgc47fc84"></a>

### shutil.copytree() Function

The copy function works for single files, but what if we want to copy an entire folder? Then we can use the copytree function.

    
    import shutil,os
    
    shutil.copytree("TestDir","TestDirBackup")

    
    import shutil,os
    
    print(os.listdir("TestDirBackup"))

    ['hello2.txt']


<a id="org425def8"></a>

### shutil.move() function

This can be used for moving and renaming files. If you want to rename a file, you can move it to the same directory using the move() function and then change the filename.

    
    import shutil,os
    
    shutil.move("TestDirBackup/newhello2.txt", ".")
    
    print(os.listdir("TestDirBackup"))

