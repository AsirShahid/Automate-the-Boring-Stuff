
# Table of Contents

1.  [Filenames and Absolute/Relative File Paths](#org98a69c9)
    1.  [Fileames and File Paths](#org0d29ef0)
    2.  [os module](#org984c821)
        1.  [os.getcwd()](#org8996ac3)
        2.  [os.chdir()](#orgb7a9a92)
    3.  [Absolute and Relative Paths](#org1058cfc)
    4.  [. and .. Folders](#org6a4923b)
    5.  [os.path module](#org9221651)
        1.  [os.path.join()](#org20cd616)
        2.  [os.path.abspath()](#orgf5cd43e)
        3.  [os.path.isabs()](#orgdd79909)
        4.  [os.path.relpath()](#org6255bd4)
        5.  [os.path.dirname()](#orga5866b8)
        6.  [os.path.basename()](#orgc25ee62)
        7.  [os.path.exists()](#org25cd60d)
        8.  [os.path.isfile()](#org03c8163)
        9.  [os.path.isdir()](#org9ac442d)
        10. [os.path.getsize()](#orgd4e7751)
    6.  [os.listdir()](#orgbe3a188)
    7.  [Example Code: Finding the total size of all files in a folder.](#org808234a)
    8.  [os.makedirs()](#org50d9c1e)
2.  [Reading and Writing Plaintext Files](#orgca155fa)
    1.  [Plaintext and Binary Files](#org04caae1)
    2.  [Reading or Writing Files in Python](#orgddaf08a)
        1.  [The open() Function](#org94a261f)
        2.  [Read Mode](#orgb2913ff)
        3.  [The read() method](#org765603c)
        4.  [The close() method](#org52d6b47)
        5.  [The readlines() Method](#orgf5a7fb3)
        6.  [Write mode](#org3a8617e)
        7.  [Append mode](#orgd12b1cc)
        8.  [Example](#org8c8c74f)
    3.  [The shelve Module](#org2935273)
        1.  [The shelve.open() Method](#orgaa6db6a)
        2.  [The keys() and values() Shelf Methods](#orga651268)
3.  [Copying and Moving Files and Folders](#orgc063dbb)
    1.  [Shell Utilities Module](#org3d35d4c)
        1.  [shutil.copy() Function](#orgb104d28)
        2.  [shutil.copytree() Function](#orgf2388c9)
        3.  [shutil.move() function](#org8f0ab38)
4.  [Deleting Files](#org2a4e9e3)
    1.  [Deleting Functions](#org9fb0406)
        1.  [os.unlink() (Deletes a single file.)](#org1668fe0)
        2.  [os.rmdir() (Delete an empty folder)](#org841a9e7)
        3.  [shutil.rmtree() (Deletes a folder and its entire contents)](#orga154a1b)
    2.  [Dry Run](#orgf27bb60)
    3.  [The send2trash Module](#orgc825b95)



<a id="org98a69c9"></a>

# Filenames and Absolute/Relative File Paths

We&rsquo;ll learn about files, folders, and how Python can work with them.

If we want our data to persist after our program is finished, we need to save it to a file.


<a id="org0d29ef0"></a>

## Fileames and File Paths

Each of our files has 2 key properties. The file name and the file path.


<a id="org984c821"></a>

## os module

The os module contains numerous file path related functions that we can use.


<a id="org8996ac3"></a>

### os.getcwd()

Every program has a setting called the current working directory, this tells us the directory that we are currently in. We can use the getcwd() function in order to find our current working directory.

    
    import os
    
    print(os.getcwd())

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files


<a id="orgb7a9a92"></a>

### os.chdir()

We can also change the current working directory using this chdir() function.

    
    import os
    
    print(os.getcwd())
    
    os.chdir("/")
    
    print(os.getcwd())

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files
    /


<a id="org1058cfc"></a>

## Absolute and Relative Paths

There are two kinds of file paths, relative and absolute. The absolute file path begins with the root directory and gives you the complete location of the file. A relative file path is relative to the current working directory.


<a id="org6a4923b"></a>

## . and .. Folders

These are not real directories, but they can be used with relative paths. The single dot stands for this directory while two dots stands for the paret directory, the directory that your current working directory is in.


<a id="org9221651"></a>

## os.path module


<a id="org20cd616"></a>

### os.path.join()

This is a join function inside of a path module inside of an os module. It takes several string arguments and returns a string value of a path for the os that you are using.

    
    import os
    print(os.path.join("folder1","folder2","folder3","file.png"))

    folder1/folder2/folder3/file.png


<a id="orgf5cd43e"></a>

### os.path.abspath()

The abspath() function will return the absolute path of the path that you pass it.

    
    import os
    
    print(os.path.abspath("Section 11.org"))

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org


<a id="orgdd79909"></a>

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


<a id="org6255bd4"></a>

### os.path.relpath()

This function will give you the relative path between two paths. The first argument is the file/directory we want to get to and the second is the directory we are already in.

    
    import os
    
    print(os.path.relpath("Section 11.org", "/usr/bin"))
    
    print(os.path.relpath("Section 11.org", "/home/mohammeds/"))

    ../../home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org
    Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org


<a id="orga5866b8"></a>

### os.path.dirname()

This function pulls out just the directory part of the path.

    
    import os
    
    print(os.path.dirname("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files


<a id="orgc25ee62"></a>

### os.path.basename()

This function pulls out just the last part of the path. Either the filename or just the directory itself if there is no file in the path.

    
    import os
    
    print(os.path.basename("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    Section 11.org


<a id="org25cd60d"></a>

### os.path.exists()

This function can check and see if the path you are passing actually exists.

    
    import os
    
    print(os.path.exists("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.exists("/home/mohammeds/Fake File Path"))

    True
    False


<a id="org03c8163"></a>

### os.path.isfile()

We can use this function to see if what we pass to it is a file or not.

    
    import os
    
    print(os.path.isfile("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.isfile("/home/mohammeds/Fake File Path"))

    True
    False


<a id="org9ac442d"></a>

### os.path.isdir()

We can use this function to see if what we pass to it is a directory or not.

    
    import os
    
    print(os.path.isdir("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.isdir("/home/mohammeds/"))

    False
    True


<a id="orgd4e7751"></a>

### os.path.getsize()

This function gives us the size of the file in bytes.

    
    import os
    
    print(os.path.getsize("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    16162


<a id="orgbe3a188"></a>

## os.listdir()

This function isn&rsquo;t in the path module. It can be passed a file path of a folder and then it&rsquo;ll return a list of strings of the filenames and folder names that it contains.

    
    import os
    
    print(os.listdir("/home/mohammeds/Documents"))

    ['[Chapman and Hall_CRC the R Ser] Albert, Jim_ Baumer, Benjamin S._ Marchi, Max - Analyzing Baseball Data with R (2018, Chapman and Hall_CRC) - libgen.lc.pdf', 'bedrock-linux-0.7.20beta1-x86_64.sh', 'fstab.txt', 'Verify Payment.pdf', 'mission-369-advanced-regular-expressions-takeaways.pdf', 'userguide.pdf', 'Quidditch Through the Ages - J.K. Rowling.pdf', 'Resume', 'SmashCharacters.txt', 'LFS-BOOK-10.1.pdf', 'Linux From Scratch - Version 10.1 - LFS-BOOK-10.1.pdf', 'Oathbringer_ Book Three of the Stormlight Archive_B01NAWAH85.kfx', 'Andrew Ng Machine Learning Lectures', 'Hugo Websites', 'Data Scientist in Python DataQuest', 'mohammed-shahid-python-for-data-science-fundamentals.pdf', 'README.md', '.git', 'mkdir', 'Crypto Trading Bot', 'Machine Trading', 'The Home Depot - Order Confirmation.pdf', 'Online Return Center.pdf', 'LeetCode', 'Kaggle', 'Coursera', 'Data Analyst in R DataQuest', 'edX', 'org-basics.org', 'happybday.org', 'org', 'letter.org', 'AB_NYC_2019.csv', 'cse351_hw1_fazli_faraz_110018236.ipynb', '.ipynb_checkpoints', 'mariaradio.org', '.auctex-auto', 'mariaradio.tex', 'mariaradio.pdf', 'mariaradio.md', 'mariaradio.html', 'Order Confirmation _ Law School Admission Council.pdf', 'marialetter.org', 'Automate the Boring Stuff', 'TEKgence Application Form.xlsx', '.dir-locals.el']


<a id="org808234a"></a>

## Example Code: Finding the total size of all files in a folder.

    
    import os
    
    totalSize=0
    
    for file in os.listdir("/home/mohammeds/Documents"):
        if not os.path.isfile(os.path.join("/home/mohammeds/Documents", file)):
            continue
        totalSize+=os.path.getsize(os.path.join("/home/mohammeds/Documents", file))
    
    print(totalSize)

    382371482


<a id="org50d9c1e"></a>

## os.makedirs()

This function can create directories for you.

    
    import os
    
    print(os.getcwd())
    
    print(os.listdir())
    
    os.makedirs("TestDir")
    
    print(os.listdir())


<a id="orgca155fa"></a>

# Reading and Writing Plaintext Files

We can start writing strings to files that we create in order to save information. We can then read this data with Python.


<a id="org04caae1"></a>

## Plaintext and Binary Files

Plaintext files only contain basic text characters and don&rsquo;t include information about color or font. Often times they have .txt extensions. Python scripts are also plain text files, except they use the .py file extension.

They can be opened with text editors such as Emacs.

Binary files are all other types of files. PDF, JPG, PNG, etc. When you open these with a text editor, it will be impossible to understand.


<a id="orgddaf08a"></a>

## Reading or Writing Files in Python

There are three main steps for reading and writing files in Python.


<a id="org94a261f"></a>

### The open() Function

This function opens files.

    
    open("hello.txt")


<a id="orgb2913ff"></a>

### Read Mode

The open() function opens the file in read mode. This only lets you read the data, it does not let you modify it.


<a id="org765603c"></a>

### The read() method

This method lets you read the opened file.


<a id="org52d6b47"></a>

### The close() method

This method closes the opened file. If you want to continue accessing it, you should save it to a variable.

    
    helloFile=open("hello.txt")
    
    
    content=helloFile.read()
    
    print(content)
    
    helloFile.close()

    Hello!
    How are you?How are you?How are you?How are you?How are you?How are you?


<a id="orgf5a7fb3"></a>

### The readlines() Method

This method returns all of the lines as strings within a list.

    
    helloFile=open("hello.txt")
    content=helloFile.readlines()
    
    print(content)

    ['Hello!\n', 'How are you?How are you?How are you?How are you?How are you?How are you?']


<a id="org3a8617e"></a>

### Write mode

In order to write to a file, it needs to be opened in write or append mode. This can overwrite existing files. For write mode, you can pass in a &ldquo;w&rdquo; argument to the open() function.

    
    helloFile=open("hello2.txt","w")
    helloFile.write("Hello!!!!")


<a id="orgd12b1cc"></a>

### Append mode

In order to write to a file, it needs to be opened in write or append mode. This can overwrite existing files. For append mode, you can pass in a &ldquo;a&rdquo; argument to the open() function.

    
    helloFile=open("hello.txt", "a")
    helloFile.write("How are you?")


<a id="org8c8c74f"></a>

### Example

    
    
    baconFile=open("bacon.txt", "w")
    
    baconFile.write("Bacon is not a vegetable")
    baconFile.close()
    
    baconFile=open("bacon.txt")
    
    print(baconFile.read())

    Bacon is not a vegetable


<a id="org2935273"></a>

## The shelve Module

Writing and reading text files is a good way to store single long strings, but if we want to save more complex data structures like lists and dictionaries, then we can save Python programs to binary shelve files.


<a id="orgaa6db6a"></a>

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


<a id="orga651268"></a>

### The keys() and values() Shelf Methods

Shelf file objects are very similar to dictionaries in the sense that they have keys and values.

    
    import shelve
    
    shelfFile=shelve.open("mydata")
    
    print(shelfFile.keys())
    print(shelfFile.values())
    
    
    print(list(shelfFile.keys()))
    print(list(shelfFile.values()))
    
    shelfFile.close()

    KeysView(<shelve.DbfilenameShelf object at 0x7f9b2a143130>)
    ValuesView(<shelve.DbfilenameShelf object at 0x7f9b2a143130>)
    ['cats']
    [['Zophie', 'Pooka', 'Simon', 'Fat-tail', 'Cleo']]


<a id="orgc063dbb"></a>

# Copying and Moving Files and Folders

We can also organize files on our drive using Python.


<a id="org3d35d4c"></a>

## Shell Utilities Module

This module has functions that let us copy, rename, and delete files in Python programs.


<a id="orgb104d28"></a>

### shutil.copy() Function

This function lets us copy files in Python. We can either copy and leave the filename or copy and give a new file name.

    
    import shutil,os
    
    shutil.copy("hello2.txt", "TestDir")
    
    shutil.copy("hello2.txt", "TestDir/newhello2.txt")
    
    print(os.listdir("TestDir"))

    ['hello2.txt', 'newhello2.txt']


<a id="orgf2388c9"></a>

### shutil.copytree() Function

The copy function works for single files, but what if we want to copy an entire folder? Then we can use the copytree function.

    
    import shutil,os
    
    shutil.copytree("TestDir","TestDirBackup")

    
    import shutil,os
    
    print(os.listdir("TestDirBackup"))

    ['hello2.txt', 'newhello2.txt']


<a id="org8f0ab38"></a>

### shutil.move() function

This can be used for moving and renaming files. If you want to rename a file, you can move it to the same directory using the move() function and then change the filename.

    
    import shutil,os
    
    shutil.move("TestDirBackup/newhello2.txt", ".")
    
    print(os.listdir("TestDirBackup"))


<a id="org2a4e9e3"></a>

# Deleting Files

There are three functions that we can use for deleting files.


<a id="org9fb0406"></a>

## Deleting Functions


<a id="org1668fe0"></a>

### os.unlink() (Deletes a single file.)

    
    import os
    
    os.unlink("hello2.txt")

    
    import os
    
    print(os.listdir())

    ['.gitkeep', 'Section 11.org', '.auctex-auto', 'Section 11.tex', 'Section 11.pdf', 'Section 11.md', 'udemy-automate-boring-python-lesson-30.mp4', 'udemy-automate-boring-python-lesson-31.mp4', 'udemy-automate-boring-python-lesson-32.mp4', 'udemy-automate-boring-python-lesson-33.mp4', 'udemy-automate-boring-python-lesson-34.mp4', 'TestDir', 'hello.txt', 'mydata', 'newhello2.txt', 'bacon.txt', 'TestDirBackup']


<a id="org841a9e7"></a>

### os.rmdir() (Delete an empty folder)

This function only removes directories that are completely empty. If the directory you try to delete has data, Python will return an error.


<a id="orga154a1b"></a>

### shutil.rmtree() (Deletes a folder and its entire contents)

This is the delete analog of the copytree() function.

    
    import os,shutil
    
    shutil.rmtree("TestDirBackup")
    
    print(os.listdir())

    ['.gitkeep', 'Section 11.org', '.auctex-auto', 'Section 11.tex', 'Section 11.pdf', 'Section 11.md', 'udemy-automate-boring-python-lesson-30.mp4', 'udemy-automate-boring-python-lesson-31.mp4', 'udemy-automate-boring-python-lesson-32.mp4', 'udemy-automate-boring-python-lesson-33.mp4', 'udemy-automate-boring-python-lesson-34.mp4', 'TestDir', 'hello.txt', 'mydata', 'newhello2.txt', 'bacon.txt']


<a id="orgf27bb60"></a>

## Dry Run

These deleting functions can be dangerous, so in order to make sure nothing goes wrong, we should do a dry run when using them.

Here we would comment out any line containing deleting functions and then instead printing out the files that we were trying to delete. This can help us make sure that we are not deleting the wrong thing.

    
    import os,shutil
    
    os.chdir("/home/mohammeds/Documents")
    
    for filename in os.listdir():
        if filename.endswith(".rxt"):
    #        os.unlink(filename)
            print(filename)


<a id="orgc825b95"></a>

## The send2trash Module

These deleting functions are still dangerous, even when doing a dry run since they will be deleted permanently. Instead, we can use the send2trash module&rsquo;s functions which sends the files to the recycling bin.

We need to install it using pip.

    pip install send2trash

    
    import send2trash
    
    send2trash.send2trash("bacon.txt")

