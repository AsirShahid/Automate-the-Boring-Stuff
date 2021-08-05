
# Table of Contents

1.  [The webbrowser Module](#org47dacd2)
2.  [Downloading from the Web with the Requests Module](#org9cacf81)
    1.  [Write-binary mode: open(filename, &ldquo;wb&rdquo;)](#org872d51d)
3.  [Parsing HTML with the Beautiful Soup Module](#org6fcc27c)
4.  [Controlling the Browser with the Selenium Module](#org4818e5d)



<a id="org47dacd2"></a>

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


<a id="org9cacf81"></a>

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


<a id="org872d51d"></a>

## Write-binary mode: open(filename, &ldquo;wb&rdquo;)

We can save a web page to a file using the open function. However, we must do somethings differently.

    
    import requests
    
    res=requests.get("http://automatetheboringstuff.com/files/rj.txt")
    playFile=open("RomeoAndJuliet.txt","wb")
    
    for chunk in res.iter_content(100000):
        playFile.write(chunk)
    
    playFile.close()

Request module functions can be useful, but they are somewhat limited. You can only use it when you have the exact URL that you need to download. Selenium lets your Python scripts control the web browser directly.


<a id="org6fcc27c"></a>

# Parsing HTML with the Beautiful Soup Module

Here we will learn how to write programs that pull information off of web pages. This is known as web scraping. We have a third party module called beautifulsoup which makes parsing through websites HTML much easier.

    pip install beautifulsoup4

    
    import bs4

Let&rsquo;s try to parse through an eBay page and scrape the price information from that page.

    
    import bs4,requests
    
    url="https://www.ebay.com/itm/313628358864"
    
    def geteBayPrice(productURL):
        response = requests.get(url)
    
        response.raise_for_status()
    
        soup=bs4.BeautifulSoup(response.text,"html.parser")
    
        elems=soup.select("#prcIsum")
    
        return elems[0].text.strip("US").strip()
    
    url="https://www.ebay.com/itm/313628358864"
    
    price=geteBayPrice(url)
    
    print("The price is %s" % (price))

    The price is $20.51

This code is pretty reliant on the website&rsquo;s CSS staying the same.

    
    import bs4,requests
    
    
    def getTemperature(url):
        response = requests.get(url)
    
        response.raise_for_status()
    
        soup=bs4.BeautifulSoup(response.text,"html.parser")
    
        elems=soup.select("#current_conditions-summary > p.myforecast-current-lrg")
    
    
        return elems[0].text.strip()
    
    url="https://forecast.weather.gov/MapClick.php?lat=40.8667&lon=-73.0343"
    
    
    
    temp=getTemperature(url)
    
    print("The temperature is %s" % (temp))

    The temperature is 76°F


<a id="org4818e5d"></a>

# Controlling the Browser with the Selenium Module

We have learned how to download webpages and parse their HTML. However, sometimes the webpages we want to access require logging in or relying on Javascript. In these cases, we can use Selenium which will open a programatically controlled webbrowser. It&rsquo;s a third party module that we need to install ourselves.

    pip install selenium

    
    from selenium import webdriver
    
    browser=webdriver.Firefox()
    
    browser.get("https://automatetheboringstuff.com")
    
    elem=browser.find_element_by_css_selector(".main > div:nth-child(1) > ul:nth-child(21) > li:nth-child(1) > a:nth-child(1)")
    
    elem.click()
    
    elems=browser.find_elements_by_css_selector('p')
    print(len(elems))

    109

Selenium has several methods of getting web elements from the page. The most commonly used ones are find<sub>element</sub><sub>by</sub><sub>css</sub><sub>selector</sub> and find<sub>elements</sub><sub>by</sub><sub>css</sub><sub>selector</sub>. However, we can also find by class name, id, link text, partial text, and tag name.

    
    from selenium import webdriver
    
    browser=webdriver.Firefox()
    
    browser.get("https://asir.dev")
    
    postElem=browser.find_element_by_css_selector("#blog-link")
    
    postElem.click()
    
    browser.back()
    browser.forward()
    browser.refresh()
    #browser.quit()
    
    searchElem=browser.find_element_by_css_selector("#search-box")
    
    search="Post"
    
    searchElem.send_keys(search)
    searchElem.submit()

Now we can take a look at how Python scripts can use Selenium to read webpages.

    
    from selenium import webdriver
    
    browser=webdriver.Firefox()
    
    browser.get("https://automatetheboringstuff.com")
    elem=browser.find_element_by_css_selector(".main > div:nth-child(1) > blockquote:nth-child(6)")
    print(elem.text)
    
    elem=browser.find_element_by_css_selector("html")
    print(elem.text)

    "The best part of programming is the triumph of seeing the machine do something useful. Automate the Boring Stuff with Python frames all of programming as these small triumphs; it makes the boring fun."
    - Hilary Mason, Founder of Fast Forward Labs and Data Scientist in Residence at Accel
    Home | Buy on No Starch Press | Buy on Amazon | @AlSweigart |
    Automate the Boring Stuff with Python
    By Al Sweigart. Free to read under a Creative Commons license.
    
    New Book: "Beyond the Boring Stuff with Python"
    You've read a beginner resource like Automate the Boring Stuff with Python or Python Crash Course, but still don't feel like a "real" programmer? Beyond the Basic Stuff with Python covers software development tools and best practices so you can code like a professional.
    
    Second Edition of Automate the Boring Stuff with Python
    
    Purchase directly from the publisher to get free PDF, Kindle, and epub ebook copies.
    Buy on Amazon
    
    
    
    Use this link to sign up for the Automate the Boring Stuff with Python online course on Udemy.
    Preview the first 15 of the course's 50 videos for free on YouTube.
    "The best part of programming is the triumph of seeing the machine do something useful. Automate the Boring Stuff with Python frames all of programming as these small triumphs; it makes the boring fun."
    - Hilary Mason, Founder of Fast Forward Labs and Data Scientist in Residence at Accel
    "I'm having a lot of fun breaking things and then putting them back together, and just remembering the joy of turning a set of instructions into something useful and fun, like I did when I was a kid."
    - Wil Wheaton, WIL WHEATON dot NET
    Practical programming for total beginners.
    If you've ever spent hours renaming files or updating hundreds of spreadsheet cells, you know how tedious tasks like these can be. But what if you could have your computer do them for you?
    In Automate the Boring Stuff with Python, you'll learn how to use Python to write programs that do in minutes what would take you hours to do by hand-no prior programming experience required. Once you've mastered the basics of programming, you'll create Python programs that effortlessly perform useful and impressive feats of automation to:
    Search for text in a file or across multiple files
    Create, update, move, and rename files and folders
    Search the Web and download online content
    Update and format data in Excel spreadsheets of any size
    Split, merge, watermark, and encrypt PDFs
    Send reminder emails and text notifications
    Fill out online forms
    Step-by-step instructions walk you through each program, and practice projects at the end of each chapter challenge you to improve those programs and use your newfound skills to automate similar tasks.
    Don't spend your time doing work a well-trained monkey could do. Even if you've never written a line of code, you can make your computer do the grunt work. Learn how in Automate the Boring Stuff with Python.
    Udemy Online Video Course
    The Automate the Boring Stuff with Python Programming online course on Udemy covers most of the content of the book. If you'd prefer a video format for learning to program, you can use this link to get a 70% discount. You will have lifetime access to the course content and can post questions to the course's forums.
    You can preview the first 15 of the course's 50 videos on YouTube for free.
    Like this book? Writing a review helps get it in front of more people!
    Table of Contents
    Chapter 0 – Introduction
    Chapter 1 – Python Basics
    Chapter 2 – Flow Control
    Chapter 3 – Functions
    Chapter 4 – Lists
    Chapter 5 – Dictionaries and Structuring Data
    Chapter 6 – Manipulating Strings
    Chapter 7 – Pattern Matching with Regular Expressions
    Chapter 8 – Input Validation
    Chapter 9 – Reading and Writing Files
    Chapter 10 – Organizing Files
    Chapter 11 – Debugging
    Chapter 12 – Web Scraping
    Chapter 13 – Working with Excel Spreadsheets
    Chapter 14 – Working with Google Spreadsheets
    Chapter 15 – Working with PDF and Word Documents
    Chapter 16 – Working with CSV Files and JSON Data
    Chapter 17 – Keeping Time, Scheduling Tasks, and Launching Programs
    Chapter 18 – Sending Email and Text Messages
    Chapter 19 – Manipulating Images
    Chapter 20 – Controlling the Keyboard and Mouse with GUI Automation
    Appendix A – Installing Third-Party Modules
    Appendix B – Running Programs
    Appendix C – Answers to the Practice Questions
    (Read the 1st edition.)
    Additional Content
    Download files used in the book
    List of CSS Selector Tutorials
    List of JSON APIs
    List of Programming Practice Sites
    List of Web Comics
    Schedulers for Windows, Mac, and Linux
    How to Do PyCon (or any tech conference)
    About the Author
    Al Sweigart is a software developer and teaches programming to kids and adults. He has written several books for beginners, including Scratch Programming Playground, Cracking Codes with Python, Invent Your Own Computer Games with Python, and Making Games with Python & Pygame
    Support the author by purchasing the print/ebook bundle from No Starch Press or separately on Amazon.
    Read the author's other Creative Commons licensed Python books.

