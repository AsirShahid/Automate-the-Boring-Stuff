
# Table of Contents

1.  [Filenames and Absolute/Relative File Paths](#orgd70bb6d)
    1.  [Fileames and File Paths](#org064b33a)
    2.  [os module](#org995f805)
        1.  [os.getcwd()](#orgca92d42)
        2.  [os.chdir()](#org716bc96)
    3.  [Absolute and Relative Paths](#orgd0c97b2)
    4.  [. and .. Folders](#org9f02f13)
    5.  [os.path module](#org34614f2)
        1.  [os.path.join()](#org465d2a1)
        2.  [os.path.abspath()](#orgc7dd876)
        3.  [os.path.isabs()](#org6c3ba62)
        4.  [os.path.relpath()](#org3c5f4db)
        5.  [os.path.dirname()](#orga37a6ed)
        6.  [os.path.basename()](#orgf1255eb)
        7.  [os.path.exists()](#org1822867)
        8.  [os.path.isfile()](#org25e5b16)
        9.  [os.path.isdir()](#org4f1740c)
        10. [os.path.getsize()](#org9ec14c9)
    6.  [os.listdir()](#org4a9b7d4)
    7.  [Example Code: Finding the total size of all files in a folder.](#org1629869)
    8.  [os.makedirs()](#org460e490)
2.  [Reading and Writing Plaintext Files](#org1254bf6)
    1.  [Plaintext and Binary Files](#orgc9fca94)
    2.  [Reading or Writing Files in Python](#org090d754)
        1.  [The open() Function](#org5417838)
        2.  [Read Mode](#orgd0b20a0)
        3.  [The read() method](#org355335b)
        4.  [The close() method](#orgdbfc6f8)
        5.  [The readlines() Method](#orgb58ca45)
        6.  [Write mode](#orgebf5e3c)
        7.  [Append mode](#org7a6b72f)
        8.  [Example](#org0e775d6)
    3.  [The shelve Module](#orgae2e9c7)
        1.  [The shelve.open() Method](#org5a0ea5b)
        2.  [The keys() and values() Shelf Methods](#org7aa422c)
3.  [Copying and Moving Files and Folders](#org770441a)
    1.  [Shell Utilities Module](#org6c06b81)
        1.  [shutil.copy() Function](#org878e528)
        2.  [shutil.copytree() Function](#org616ce69)
        3.  [shutil.move() function](#org4aa0f7c)
4.  [Deleting Files](#orga696c65)
    1.  [Deleting Functions](#org58e8999)
        1.  [os.unlink() (Deletes a single file.)](#org2db2422)
        2.  [os.rmdir() (Delete an empty folder)](#org11da5b6)
        3.  [shutil.rmtree() (Deletes a folder and its entire contents)](#orgd591571)
    2.  [Dry Run](#org6bf44af)
    3.  [The send2trash Module](#orga1cae91)
5.  [Walking a Directory Tree](#org0b469a9)
    1.  [The os.walk() Function](#org8f05d98)



<a id="orgd70bb6d"></a>

# Filenames and Absolute/Relative File Paths

We&rsquo;ll learn about files, folders, and how Python can work with them.

If we want our data to persist after our program is finished, we need to save it to a file.


<a id="org064b33a"></a>

## Fileames and File Paths

Each of our files has 2 key properties. The file name and the file path.


<a id="org995f805"></a>

## os module

The os module contains numerous file path related functions that we can use.


<a id="orgca92d42"></a>

### os.getcwd()

Every program has a setting called the current working directory, this tells us the directory that we are currently in. We can use the getcwd() function in order to find our current working directory.

    
    import os
    
    print(os.getcwd())

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files


<a id="org716bc96"></a>

### os.chdir()

We can also change the current working directory using this chdir() function.

    
    import os
    
    print(os.getcwd())
    
    os.chdir("/")
    
    print(os.getcwd())

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files
    /


<a id="orgd0c97b2"></a>

## Absolute and Relative Paths

There are two kinds of file paths, relative and absolute. The absolute file path begins with the root directory and gives you the complete location of the file. A relative file path is relative to the current working directory.


<a id="org9f02f13"></a>

## . and .. Folders

These are not real directories, but they can be used with relative paths. The single dot stands for this directory while two dots stands for the paret directory, the directory that your current working directory is in.


<a id="org34614f2"></a>

## os.path module


<a id="org465d2a1"></a>

### os.path.join()

This is a join function inside of a path module inside of an os module. It takes several string arguments and returns a string value of a path for the os that you are using.

    
    import os
    print(os.path.join("folder1","folder2","folder3","file.png"))

    folder1/folder2/folder3/file.png


<a id="orgc7dd876"></a>

### os.path.abspath()

The abspath() function will return the absolute path of the path that you pass it.

    
    import os
    
    print(os.path.abspath("Section 11.org"))

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org


<a id="org6c3ba62"></a>

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


<a id="org3c5f4db"></a>

### os.path.relpath()

This function will give you the relative path between two paths. The first argument is the file/directory we want to get to and the second is the directory we are already in.

    
    import os
    
    print(os.path.relpath("Section 11.org", "/usr/bin"))
    
    print(os.path.relpath("Section 11.org", "/home/mohammeds/"))

    ../../home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org
    Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org


<a id="orga37a6ed"></a>

### os.path.dirname()

This function pulls out just the directory part of the path.

    
    import os
    
    print(os.path.dirname("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files


<a id="orgf1255eb"></a>

### os.path.basename()

This function pulls out just the last part of the path. Either the filename or just the directory itself if there is no file in the path.

    
    import os
    
    print(os.path.basename("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    Section 11.org


<a id="org1822867"></a>

### os.path.exists()

This function can check and see if the path you are passing actually exists.

    
    import os
    
    print(os.path.exists("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.exists("/home/mohammeds/Fake File Path"))

    True
    False


<a id="org25e5b16"></a>

### os.path.isfile()

We can use this function to see if what we pass to it is a file or not.

    
    import os
    
    print(os.path.isfile("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.isfile("/home/mohammeds/Fake File Path"))

    True
    False


<a id="org4f1740c"></a>

### os.path.isdir()

We can use this function to see if what we pass to it is a directory or not.

    
    import os
    
    print(os.path.isdir("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.isdir("/home/mohammeds/"))

    False
    True


<a id="org9ec14c9"></a>

### os.path.getsize()

This function gives us the size of the file in bytes.

    
    import os
    
    print(os.path.getsize("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    18591


<a id="org4a9b7d4"></a>

## os.listdir()

This function isn&rsquo;t in the path module. It can be passed a file path of a folder and then it&rsquo;ll return a list of strings of the filenames and folder names that it contains.

    
    import os
    
    print(os.listdir("/home/mohammeds/Documents"))

    ['[Chapman and Hall_CRC the R Ser] Albert, Jim_ Baumer, Benjamin S._ Marchi, Max - Analyzing Baseball Data with R (2018, Chapman and Hall_CRC) - libgen.lc.pdf', 'bedrock-linux-0.7.20beta1-x86_64.sh', 'fstab.txt', 'Verify Payment.pdf', 'mission-369-advanced-regular-expressions-takeaways.pdf', 'userguide.pdf', 'Quidditch Through the Ages - J.K. Rowling.pdf', 'Resume', 'SmashCharacters.txt', 'LFS-BOOK-10.1.pdf', 'Linux From Scratch - Version 10.1 - LFS-BOOK-10.1.pdf', 'Oathbringer_ Book Three of the Stormlight Archive_B01NAWAH85.kfx', 'Andrew Ng Machine Learning Lectures', 'Hugo Websites', 'Data Scientist in Python DataQuest', 'mohammed-shahid-python-for-data-science-fundamentals.pdf', 'README.md', '.git', 'mkdir', 'Crypto Trading Bot', 'Machine Trading', 'The Home Depot - Order Confirmation.pdf', 'Online Return Center.pdf', 'LeetCode', 'Kaggle', 'Coursera', 'Data Analyst in R DataQuest', 'edX', 'org-basics.org', 'happybday.org', 'org', 'letter.org', 'AB_NYC_2019.csv', 'cse351_hw1_fazli_faraz_110018236.ipynb', '.ipynb_checkpoints', 'mariaradio.org', '.auctex-auto', 'mariaradio.tex', 'mariaradio.pdf', 'mariaradio.md', 'mariaradio.html', 'Order Confirmation _ Law School Admission Council.pdf', 'marialetter.org', 'Automate the Boring Stuff', 'TEKgence Application Form.xlsx', '.dir-locals.el']


<a id="org1629869"></a>

## Example Code: Finding the total size of all files in a folder.

    
    import os
    
    totalSize=0
    
    for file in os.listdir("/home/mohammeds/Documents"):
        if not os.path.isfile(os.path.join("/home/mohammeds/Documents", file)):
            continue
        totalSize+=os.path.getsize(os.path.join("/home/mohammeds/Documents", file))
    
    print(totalSize)

    382371482


<a id="org460e490"></a>

## os.makedirs()

This function can create directories for you.

    
    import os
    
    print(os.getcwd())
    
    print(os.listdir())
    
    os.makedirs("TestDir")
    
    print(os.listdir())


<a id="org1254bf6"></a>

# Reading and Writing Plaintext Files

We can start writing strings to files that we create in order to save information. We can then read this data with Python.


<a id="orgc9fca94"></a>

## Plaintext and Binary Files

Plaintext files only contain basic text characters and don&rsquo;t include information about color or font. Often times they have .txt extensions. Python scripts are also plain text files, except they use the .py file extension.

They can be opened with text editors such as Emacs.

Binary files are all other types of files. PDF, JPG, PNG, etc. When you open these with a text editor, it will be impossible to understand.


<a id="org090d754"></a>

## Reading or Writing Files in Python

There are three main steps for reading and writing files in Python.


<a id="org5417838"></a>

### The open() Function

This function opens files.

    
    open("hello.txt")


<a id="orgd0b20a0"></a>

### Read Mode

The open() function opens the file in read mode. This only lets you read the data, it does not let you modify it.


<a id="org355335b"></a>

### The read() method

This method lets you read the opened file.


<a id="orgdbfc6f8"></a>

### The close() method

This method closes the opened file. If you want to continue accessing it, you should save it to a variable.

    
    helloFile=open("hello.txt")
    
    
    content=helloFile.read()
    
    print(content)
    
    helloFile.close()

    Hello!
    How are you?How are you?How are you?How are you?How are you?How are you?How are you?How are you?How are you?How are you?


<a id="orgb58ca45"></a>

### The readlines() Method

This method returns all of the lines as strings within a list.

    
    helloFile=open("hello.txt")
    content=helloFile.readlines()
    
    print(content)

    ['Hello!\n', 'How are you?How are you?How are you?How are you?How are you?How are you?How are you?How are you?How are you?How are you?']


<a id="orgebf5e3c"></a>

### Write mode

In order to write to a file, it needs to be opened in write or append mode. This can overwrite existing files. For write mode, you can pass in a &ldquo;w&rdquo; argument to the open() function.

    
    helloFile=open("hello2.txt","w")
    helloFile.write("Hello!!!!")


<a id="org7a6b72f"></a>

### Append mode

In order to write to a file, it needs to be opened in write or append mode. This can overwrite existing files. For append mode, you can pass in a &ldquo;a&rdquo; argument to the open() function.

    
    helloFile=open("hello.txt", "a")
    helloFile.write("How are you?")


<a id="org0e775d6"></a>

### Example

    
    
    baconFile=open("bacon.txt", "w")
    
    baconFile.write("Bacon is not a vegetable")
    baconFile.close()
    
    baconFile=open("bacon.txt")
    
    print(baconFile.read())

    Bacon is not a vegetable


<a id="orgae2e9c7"></a>

## The shelve Module

Writing and reading text files is a good way to store single long strings, but if we want to save more complex data structures like lists and dictionaries, then we can save Python programs to binary shelve files.


<a id="org5a0ea5b"></a>

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


<a id="org7aa422c"></a>

### The keys() and values() Shelf Methods

Shelf file objects are very similar to dictionaries in the sense that they have keys and values.

    
    import shelve
    
    shelfFile=shelve.open("mydata")
    
    print(shelfFile.keys())
    print(shelfFile.values())
    
    
    print(list(shelfFile.keys()))
    print(list(shelfFile.values()))
    
    shelfFile.close()

    KeysView(<shelve.DbfilenameShelf object at 0x7f707f5a4130>)
    ValuesView(<shelve.DbfilenameShelf object at 0x7f707f5a4130>)
    ['cats']
    [['Zophie', 'Pooka', 'Simon', 'Fat-tail', 'Cleo']]


<a id="org770441a"></a>

# Copying and Moving Files and Folders

We can also organize files on our drive using Python.


<a id="org6c06b81"></a>

## Shell Utilities Module

This module has functions that let us copy, rename, and delete files in Python programs.


<a id="org878e528"></a>

### shutil.copy() Function

This function lets us copy files in Python. We can either copy and leave the filename or copy and give a new file name.

    
    import shutil,os
    
    shutil.copy("hello2.txt", "TestDir")
    
    shutil.copy("hello2.txt", "TestDir/newhello2.txt")
    
    print(os.listdir("TestDir"))

    ['hello2.txt', 'newhello2.txt']


<a id="org616ce69"></a>

### shutil.copytree() Function

The copy function works for single files, but what if we want to copy an entire folder? Then we can use the copytree function.

    
    import shutil,os
    
    shutil.copytree("TestDir","TestDirBackup")

    
    import shutil,os
    
    print(os.listdir("TestDirBackup"))

    ['hello2.txt', 'newhello2.txt']


<a id="org4aa0f7c"></a>

### shutil.move() function

This can be used for moving and renaming files. If you want to rename a file, you can move it to the same directory using the move() function and then change the filename.

    
    import shutil,os
    
    shutil.move("TestDirBackup/newhello2.txt", ".")
    
    print(os.listdir("TestDirBackup"))


<a id="orga696c65"></a>

# Deleting Files

There are three functions that we can use for deleting files.


<a id="org58e8999"></a>

## Deleting Functions


<a id="org2db2422"></a>

### os.unlink() (Deletes a single file.)

    
    import os
    
    os.unlink("hello2.txt")

    
    import os
    
    print(os.listdir())

    ['.gitkeep', 'Section 11.org', '.auctex-auto', 'Section 11.tex', 'Section 11.pdf', 'Section 11.md', 'udemy-automate-boring-python-lesson-30.mp4', 'udemy-automate-boring-python-lesson-31.mp4', 'udemy-automate-boring-python-lesson-32.mp4', 'udemy-automate-boring-python-lesson-33.mp4', 'udemy-automate-boring-python-lesson-34.mp4', 'TestDir', 'hello.txt', 'mydata', 'newhello2.txt', 'bacon.txt', 'TestDirBackup']


<a id="org11da5b6"></a>

### os.rmdir() (Delete an empty folder)

This function only removes directories that are completely empty. If the directory you try to delete has data, Python will return an error.


<a id="orgd591571"></a>

### shutil.rmtree() (Deletes a folder and its entire contents)

This is the delete analog of the copytree() function.

    
    import os,shutil
    
    shutil.rmtree("TestDirBackup")
    
    print(os.listdir())

    ['.gitkeep', 'Section 11.org', '.auctex-auto', 'Section 11.tex', 'Section 11.pdf', 'Section 11.md', 'udemy-automate-boring-python-lesson-30.mp4', 'udemy-automate-boring-python-lesson-31.mp4', 'udemy-automate-boring-python-lesson-32.mp4', 'udemy-automate-boring-python-lesson-33.mp4', 'udemy-automate-boring-python-lesson-34.mp4', 'TestDir', 'hello.txt', 'mydata', 'newhello2.txt', 'bacon.txt']


<a id="org6bf44af"></a>

## Dry Run

These deleting functions can be dangerous, so in order to make sure nothing goes wrong, we should do a dry run when using them.

Here we would comment out any line containing deleting functions and then instead printing out the files that we were trying to delete. This can help us make sure that we are not deleting the wrong thing.

    
    import os,shutil
    
    os.chdir("/home/mohammeds/Documents")
    
    for filename in os.listdir():
        if filename.endswith(".rxt"):
    #        os.unlink(filename)
            print(filename)


<a id="orga1cae91"></a>

## The send2trash Module

These deleting functions are still dangerous, even when doing a dry run since they will be deleted permanently. Instead, we can use the send2trash module&rsquo;s functions which sends the files to the recycling bin.

We need to install it using pip.

    pip install send2trash

    
    import send2trash
    
    send2trash.send2trash("bacon.txt")


<a id="org0b469a9"></a>

# Walking a Directory Tree

How can we write a program that applies to all of the directories and files inside of a particular directory.


<a id="org8f05d98"></a>

## The os.walk() Function

This function is passed a root folder that we want to check and the return value is used in for loops. It returns 3 values on each iteration of the for loop.

    
    import os
    
    for folderName, subfolders, filenames in os.walk("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files"):
        print("The folder is %s\nThe subfolders in %s are: %s\nThe filenames in %s are: %s" % (folderName,folderName,subfolders,folderName,filenames))
    
        for subfolder in subfolders:
            if "fish" in subfolder:
                os.rmdir(subfolder)
    #    for file in filenames:
    #        if file.endswith(".py"):
    #            shutil.copy(os.path.join(folderName, file), os.path.join(folderName, file+"backup"))

    The folder is /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files
    The subfolders in /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files are: ['.auctex-auto', 'TestDir']
    The filenames in /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files are: ['.gitkeep', 'Section 11.org', 'Section 11.tex', 'Section 11.pdf', 'Section 11.md', 'udemy-automate-boring-python-lesson-30.mp4', 'udemy-automate-boring-python-lesson-31.mp4', 'udemy-automate-boring-python-lesson-32.mp4', 'udemy-automate-boring-python-lesson-33.mp4', 'udemy-automate-boring-python-lesson-34.mp4', 'hello.txt', 'mydata', 'newhello2.txt']
    The folder is /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/.auctex-auto
    The subfolders in /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/.auctex-auto are: []
    The filenames in /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/.auctex-auto are: ['Section 11.el']
    The folder is /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/TestDir
    The subfolders in /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/TestDir are: []
    The filenames in /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/TestDir are: ['hello2.txt', 'newhello2.txt']

This looks at all the contents of the directory recursively and makes many tasks like finding and renaming many different files/subdirectories significnatly faster.

