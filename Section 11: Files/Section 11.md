
# Table of Contents

1.  [Filenames and Absolute/Relative File Paths](#orgaf4d528)
    1.  [Fileames and File Paths](#org776f143)
    2.  [os module](#org8e6bf15)
        1.  [os.getcwd()](#orgcc60dac)
        2.  [os.chdir()](#orgd5ce300)
    3.  [Absolute and Relative Paths](#org449a0e7)
    4.  [. and .. Folders](#org09e1392)
    5.  [os.path module](#orga35dce2)
        1.  [os.path.join()](#org0c8095f)
        2.  [os.path.abspath()](#org1073aaa)
        3.  [os.path.isabs()](#org4a04b7a)
        4.  [os.path.relpath()](#org1ad9714)
        5.  [os.path.dirname()](#orgd9dc797)
        6.  [os.path.basename()](#orgd011d80)
        7.  [os.path.exists()](#orgb271200)
        8.  [os.path.isfile()](#org7bca25f)
        9.  [os.path.isdir()](#orgdd36f0b)
        10. [os.path.getsize()](#orgf0e3bec)
    6.  [os.listdir()](#org52fe4bf)
    7.  [Example Code: Finding the total size of all files in a folder.](#org330f608)
    8.  [os.makedirs()](#org8a74505)



<a id="orgaf4d528"></a>

# Filenames and Absolute/Relative File Paths

We&rsquo;ll learn about files, folders, and how Python can work with them.

If we want our data to persist after our program is finished, we need to save it to a file.


<a id="org776f143"></a>

## Fileames and File Paths

Each of our files has 2 key properties. The file name and the file path.


<a id="org8e6bf15"></a>

## os module

The os module contains numerous file path related functions that we can use.


<a id="orgcc60dac"></a>

### os.getcwd()

Every program has a setting called the current working directory, this tells us the directory that we are currently in. We can use the getcwd() function in order to find our current working directory.

    
    import os
    
    print(os.getcwd())

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files


<a id="orgd5ce300"></a>

### os.chdir()

We can also change the current working directory using this chdir() function.

    
    import os
    
    print(os.getcwd())
    
    os.chdir("/")
    
    print(os.getcwd())

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files
    /


<a id="org449a0e7"></a>

## Absolute and Relative Paths

There are two kinds of file paths, relative and absolute. The absolute file path begins with the root directory and gives you the complete location of the file. A relative file path is relative to the current working directory.


<a id="org09e1392"></a>

## . and .. Folders

These are not real directories, but they can be used with relative paths. The single dot stands for this directory while two dots stands for the paret directory, the directory that your current working directory is in.


<a id="orga35dce2"></a>

## os.path module


<a id="org0c8095f"></a>

### os.path.join()

This is a join function inside of a path module inside of an os module. It takes several string arguments and returns a string value of a path for the os that you are using.

    
    import os
    print(os.path.join("folder1","folder2","folder3","file.png"))

    folder1/folder2/folder3/file.png


<a id="org1073aaa"></a>

### os.path.abspath()

The abspath() function will return the absolute path of the path that you pass it.

    
    import os
    
    print(os.path.abspath("Section 11.org"))

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org


<a id="org4a04b7a"></a>

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


<a id="org1ad9714"></a>

### os.path.relpath()

This function will give you the relative path between two paths. The first argument is the file/directory we want to get to and the second is the directory we are already in.

    
    import os
    
    print(os.path.relpath("Section 11.org", "/usr/bin"))
    
    print(os.path.relpath("Section 11.org", "/home/mohammeds/"))

    ../../home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org
    Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org


<a id="orgd9dc797"></a>

### os.path.dirname()

This function pulls out just the directory part of the path.

    
    import os
    
    print(os.path.dirname("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    /home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files


<a id="orgd011d80"></a>

### os.path.basename()

This function pulls out just the last part of the path. Either the filename or just the directory itself if there is no file in the path.

    
    import os
    
    print(os.path.basename("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    Section 11.org


<a id="orgb271200"></a>

### os.path.exists()

This function can check and see if the path you are passing actually exists.

    
    import os
    
    print(os.path.exists("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.exists("/home/mohammeds/Fake File Path"))

    True
    False


<a id="org7bca25f"></a>

### os.path.isfile()

We can use this function to see if what we pass to it is a file or not.

    
    import os
    
    print(os.path.isfile("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.isfile("/home/mohammeds/Fake File Path"))

    True
    False


<a id="orgdd36f0b"></a>

### os.path.isdir()

We can use this function to see if what we pass to it is a directory or not.

    
    import os
    
    print(os.path.isdir("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))
    
    print(os.path.isdir("/home/mohammeds/"))

    False
    True


<a id="orgf0e3bec"></a>

### os.path.getsize()

This function gives us the size of the file in bytes.

    
    import os
    
    print(os.path.getsize("/home/mohammeds/Documents/Automate the Boring Stuff/Section 11: Files/Section 11.org"))

    8057


<a id="org52fe4bf"></a>

## os.listdir()

This function isn&rsquo;t in the path module. It can be passed a file path of a folder and then it&rsquo;ll return a list of strings of the filenames and folder names that it contains.

    
    import os
    
    print(os.listdir("/home/mohammeds/Documents"))

    ['[Chapman and Hall_CRC the R Ser] Albert, Jim_ Baumer, Benjamin S._ Marchi, Max - Analyzing Baseball Data with R (2018, Chapman and Hall_CRC) - libgen.lc.pdf', 'bedrock-linux-0.7.20beta1-x86_64.sh', 'fstab.txt', 'Verify Payment.pdf', 'mission-369-advanced-regular-expressions-takeaways.pdf', 'userguide.pdf', 'Quidditch Through the Ages - J.K. Rowling.pdf', 'Resume', 'SmashCharacters.txt', 'LFS-BOOK-10.1.pdf', 'Linux From Scratch - Version 10.1 - LFS-BOOK-10.1.pdf', 'Oathbringer_ Book Three of the Stormlight Archive_B01NAWAH85.kfx', 'Andrew Ng Machine Learning Lectures', 'Hugo Websites', 'Data Scientist in Python DataQuest', 'mohammed-shahid-python-for-data-science-fundamentals.pdf', 'README.md', '.git', 'mkdir', 'Crypto Trading Bot', 'Machine Trading', 'The Home Depot - Order Confirmation.pdf', 'Online Return Center.pdf', 'LeetCode', 'Kaggle', 'Coursera', 'Data Analyst in R DataQuest', 'edX', 'org-basics.org', 'happybday.org', 'org', 'letter.org', 'AB_NYC_2019.csv', 'cse351_hw1_fazli_faraz_110018236.ipynb', '.ipynb_checkpoints', 'mariaradio.org', '.auctex-auto', 'mariaradio.tex', 'mariaradio.pdf', 'mariaradio.md', 'mariaradio.html', 'Order Confirmation _ Law School Admission Council.pdf', 'marialetter.org', 'Automate the Boring Stuff', 'TEKgence Application Form.xlsx', '.dir-locals.el']


<a id="org330f608"></a>

## Example Code: Finding the total size of all files in a folder.

    
    import os
    
    totalSize=0
    
    for file in os.listdir("/home/mohammeds/Documents"):
        if not os.path.isfile(os.path.join("/home/mohammeds/Documents", file)):
            continue
        totalSize+=os.path.getsize(os.path.join("/home/mohammeds/Documents", file))
    
    print(totalSize)

    382371482


<a id="org8a74505"></a>

## os.makedirs()

This function can create directories for you.

    
    import os
    
    print(os.getcwd())
    
    print(os.listdir())
    
    os.makedirs("TestDir")
    
    print(os.listdir())

