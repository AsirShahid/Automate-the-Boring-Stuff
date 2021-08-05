
# Table of Contents

1.  [The webbrowser Module](#orgb2f1b8e)
2.  [Downloading from the Web with the Requests Module](#org8190140)
    1.  [Write-binary mode: open(filename, &ldquo;wb&rdquo;)](#org5b77233)



<a id="orgb2f1b8e"></a>

# The webbrowser Module

    
    import webbrowser
    
    webbrowser.open("https://asir.dev")

Let&rsquo;s create a program that can open a given address on maps.

    
    import webbrowser, sys, pyperclip
    
    sys.argv # ["mapit.py", "870", "Valencia", "St."]
    
    # Check if command line arguments were passed
    
    if len(sys.argv) > 1:
        # ["mapit.py", "870", "Valencia", "St."] -> 870 Valencia St.
        address=" ".join(sys.argv[1:])
    else:
        address=pyperclip.paste()
    
    webbrowser.open("https://www.google.com/maps/place/%s" % (address))


<a id="org8190140"></a>

# Downloading from the Web with the Requests Module

The requests module lets you easily download files from the web without having to worry about complicated network issues. The requests module is a third party module which we&rsquo;ll need to install on our own.

    pip install requests

We can pass a URL to the requests.get() function in order to get the file. We can check the status code to see if it downloaded properly, if so then we&rsquo;ll get the status code 200. We can print out the file using .text. We can also see if there is an issue by calling the raise<sub>for</sub><sub>status</sub>() method which will raise an error if we ran into any problems.

    
    import requests
    
    res=requests.get("http://automatetheboringstuff.com/files/rj.txt")
    
    print(res.status_code)
    
    print(len(res.text))
    print(res.text[:500])
    
    print(res.raise_for_status())
    
    badRes=requests.get("http://automatetheboringstuff.com/files/rjuliet.txt")
    
    print(badRes.raise_for_status())


<a id="org5b77233"></a>

## Write-binary mode: open(filename, &ldquo;wb&rdquo;)

We can save a web page to a file using the open function. However, we must do somethings differently.

    
    import requests
    
    res=requests.get("http://automatetheboringstuff.com/files/rj.txt")
    playFile=open("RomeoAndJuliet.txt","wb")
    
    for chunk in res.iter_content(100000):
        playFile.write(chunk)
    
    playFile.close()

Request module functions can be useful, but they are somewhat limited. You can only use it when you have the exact URL that you need to download. Selenium lets your Python scripts control the web browser directly.

