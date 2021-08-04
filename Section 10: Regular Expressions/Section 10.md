
# Table of Contents

1.  [Regular Expression Basics](#orgef05d77)
    1.  [The re Module](#org5ec8a56)
2.  [Regex Groups and the Pipe Character](#org7f896c9)
    1.  [Groups](#org69120c5)
    2.  [Pipe Character |](#org9d9a3b5)
3.  [Repetition in Regex Patterns and Greedy/Nongreedy Matching](#orgd0f7a24)
    1.  [? (zero or one)](#orgfe766b6)
    2.  [\* (zero or more)](#orgfb3b821)
    3.  [+ (one or more)](#org236f472)
    4.  [Escaping ?, \*, and +](#orgdbce0e4)
    5.  [{x} (exactly x)](#orgafd3a22)
    6.  [{x,y} (at least x, at most y)](#orgd7f857b)
4.  [Regex Character Classes and the findall() Method](#org8f3b124)
    1.  [Character Classes](#org4949b7c)



<a id="orgef05d77"></a>

# Regular Expression Basics

In this lesson, we will be working with pattern matching and regular expressions. Regular expressions allow you to specify a pattern of text to search for.

An example of a text pattern would be a phone number. 415-555-0000. In the US, this is the standard way of writing up phone numbers. If we had that same number but without the hyphens, we would not recognize it as a phone number.

    def isPhoneNumber(text):
        if len(text) != 12:
            return False
        for i in range(0, 3):
            if not text[i].isdecimal():
                return False
        if text[3] != '-':
            return False
        for i in range(4, 7):
            if not text[i].isdecimal():
                return False
        if text[7] != '-':
            return False
        for i in range(8, 12):
            if not text[i].isdecimal():
                return False
        return True
    
    print(isPhoneNumber("415-555-1234"))
    print(isPhoneNumber("My Phone Number"))

    True
    False

That&rsquo;s a lot of code for a relatively simple task. If we want to find phone numbers in large strings, we&rsquo;d need to write some more code.

    def isPhoneNumber(text):
        if len(text) != 12:
            return False
        for i in range(0, 3):
            if not text[i].isdecimal():
                return False
        if text[3] != '-':
            return False
        for i in range(4, 7):
            if not text[i].isdecimal():
                return False
        if text[7] != '-':
            return False
        for i in range(8, 12):
            if not text[i].isdecimal():
                return False
        return True
    
    print(isPhoneNumber("415-555-1234"))
    print(isPhoneNumber("My Phone Number"))
    
    message="Call me at 415-555-1011 tomorrow, or 415-555-9999 for my office line"
    
    foundNuumber=False
    
    for i in range(len(message)):
        chunk=message[i:i+12]
        if isPhoneNumber(chunk) == True:
            print("Phone number found")
            foundNumber=True
    if not foundNumber:
        print("Could not find any phone numbers")

    True
    False
    Phone number found
    Phone number found


<a id="org5ec8a56"></a>

## The re Module

We can write the previous code much faster using regular expressions.

    
    import re
    
    message="Call me at 415-555-1011 tomorrow, or 415-555-9999 for my office line"
    
    phoneNumRegex=re.compile(r"\d\d\d-\d\d\d-\d\d\d\d")
    
    mo=phoneNumRegex.search(message)
    
    print(type(mo))
    print(mo.group())
    
    print(phoneNumRegex.findall(message))

    <class 're.Match'>
    415-555-1011
    ['415-555-1011', '415-555-9999']


<a id="org7f896c9"></a>

# Regex Groups and the Pipe Character

We can try some more of Python&rsquo;s more powerful pattern matching capabilities.

Let&rsquo;s say we want to seperate the area code from a phone number.

    
    import re
    
    phoneNumRegex = re.compile(r"\d\d\d-\d\d\d-\d\d\d\d")
    mo=phoneNumRegex.search("My number is 415-555-4242")
    print(mo.group())

    415-555-4242


<a id="org69120c5"></a>

## Groups

Let&rsquo;s say we only want the phone number or only the phone number portion of the number. We can do this sing parentheses to mark out groups in the string.

    
    import re
    
    phoneNumRegex = re.compile(r"(\d\d\d)-(\d\d\d-\d\d\d\d)")
    mo=phoneNumRegex.search("My number is 415-555-4242")
    print(mo.group())
    
    print(mo.group(1))
    print(mo.group(2))

    415-555-4242
    415
    555-4242

The parentheses there can be useful syntax when we want to find specific parts of something. However, what can we do when we want to find literal parentheses? We would escape them using parentheses.

    
    import re
    
    phoneNumRegex = re.compile(r"\(\d\d\d\) \d\d\d-\d\d\d\d")
    mo=phoneNumRegex.search("My number is (415) 555-4242")
    print(mo.group())

    (415) 555-4242


<a id="org9d9a3b5"></a>

## Pipe Character |

Pipes can be used to match one of several patterns as part of the regular expression.

Let&rsquo;s say we wanted to match any of the strings &ldquo;Batman&rdquo;, &ldquo;Batmobile&rdquo;, &ldquo;Batcopter&rdquo;, or &ldquo;Batbat&rdquo;

    
    import re
    
    batRegex = re.compile(r"Bat(man|mobile|copter|bat)")
    mo=batRegex.search("Batmobile lost a wheel.")
    print(mo.group())
    print(mo.group(1))

    Batmobile
    mobile

If the search method can&rsquo;t find the regular expression pattern, it will return None. In that case, we can risk running into errors.


<a id="orgd0f7a24"></a>

# Repetition in Regex Patterns and Greedy/Nongreedy Matching

How can we match a certain number of repetitions of a group? For example, one or more repitions, between 7 and 10 repitions, etc.


<a id="orgfe766b6"></a>

## ? (zero or one)

This says match the preceding group either 0 or 1 times.

    
    import re
    
    #batRegex=re.compile(r"Batman|Batwoman")
    batRegex=re.compile(r"Bat(wo)?man")
    
    mo=batRegex.search("The Adventures of Batman")
    print(mo.group())
    
    mo=batRegex.search("The Adventures of Batwoman")
    print(mo.group())
    
    mo=batRegex.search("The Adventures of Batwowoman")
    print(mo)

    Batman
    Batwoman
    None

Using our earlier phone number example, we can make a regular expression that looks for phone numbers that do or do not have an area code. With our previous code, if we did not have an area code then the regex would not find the phone number.

    
    import re
    
    phoneRegex=re.compile(r"\d\d\d-\d\d\d-\d\d\d\d")
    
    mo = phoneRegex.search("My phone number is 415-555-1234")
    print(mo.group())
    
    mo = phoneRegex.search("My phone number is 555-1234")
    print(mo)
    
    phoneRegex=re.compile(r"(\d\d\d-)?\d\d\d-\d\d\d\d")
    
    mo = phoneRegex.search("My phone number is 415-555-1234")
    print(mo.group())
    
    mo = phoneRegex.search("My phone number is 555-1234")
    print(mo.group())

    415-555-1234
    None
    415-555-1234
    555-1234

If we need to match a question mark as part of the expression, we can simply escape it by doing \\?.


<a id="orgfb3b821"></a>

## \* (zero or more)

The asterisk means match 0 or more times.

    
    import re
    batRegex=re.compile(r"Bat(wo)*man")
    
    mo=batRegex.search("The Adventures of Batman")
    print(mo.group())
    
    mo=batRegex.search("The Adventures of Batwoman")
    print(mo.group())
    
    mo=batRegex.search("The Adventures of Batwowowoman")
    print(mo.group())

    Batman
    Batwoman
    Batwowowoman

If you need to match an \* that appears in the pattern, you can escape it by doing \\\*.


<a id="org236f472"></a>

## + (one or more)

Unlike the star, the group preceding a + must appear in the pattern.

    
    import re
    batRegex=re.compile(r"Bat(wo)+man")
    
    mo=batRegex.search("The Adventures of Batman")
    print(mo)
    
    mo=batRegex.search("The Adventures of Batwoman")
    print(mo.group())
    
    mo=batRegex.search("The Adventures of Batwowowoman")
    print(mo.group())

    None
    Batwoman
    Batwowowoman

If you need to match a + that appears in the pattern, you can escape it by doing \\+.


<a id="orgdbce0e4"></a>

## Escaping ?, \*, and +

    
    import re
    regex = re.compile(r"\+\*\?")
    
    mo=regex.search("I learned about +*? regex syntax")
    print(mo.group())

    +*?

We could also put the above +\*? into a group and then putting a + after it to say that the group needs to appear at least once.

    
    import re
    regex = re.compile(r"(\+\*\?)+")
    
    mo=regex.search("I learned about +*?+*?+*? regex syntax")
    print(mo.group())

    +*?+*?+*?


<a id="orgafd3a22"></a>

## {x} (exactly x)

This can be used if you wanted to match a specific number of repetitions of a group.

    
    import re
    
    haRegex=re.compile(r"(Ha){3}")
    mo=haRegex.search("He said \"HaHaHa\"")
    print(mo.group())

    HaHaHa

While the above is a simple example, we could do it for many other, more complex examples.

    
    import re
    
    phoneRegex=re.compile(r"((\d\d\d-)?\d\d\d-\d\d\d\d(,)?){3}")
    mo=phoneRegex.search("My numbers are 415-555-1234,555-4242,212-555-0000")
    print(mo.group())

    415-555-1234,555-4242,212-555-0000


<a id="orgd7f857b"></a>

## {x,y} (at least x, at most y)

    
    import re
    haRegex=re.compile(r"(Ha){3,5}")
    mo=haRegex.search("He said \"HaHaHa\"")
    print(mo.group())
    
    mo=haRegex.search("He said \"HaHaHaHaHa\"")
    print(mo.group())
    
    mo=haRegex.search("He said \"HaHaHaHaHaHa\"")
    print(mo)

    HaHaHa
    HaHaHaHaHa
    <re.Match object; span=(9, 19), match='HaHaHaHaHa'>

We can also have no y value which would have no maximum and be unbounded, x or more.

    
    import re
    
    digitRegex=re.compile(r"(\d){3,5}")
    mo=digitRegex.search("1234567890")
    print(mo.group())

    12345

As we can see above, there was a match of the first 5 digits even though the first 3 also would have sufficed. By default, Python regular expressions do greedy matches. This means that it tries to match the longest possible string that matches the pattern.

In order to do a nongreedy match, we can specify a question mark following the curly braces. Then it matches the first, shortest pattern.

    
    import re
    
    digitRegex=re.compile(r"(\d){3,5}?")
    mo=digitRegex.search("1234567890")
    print(mo.group())

    123


<a id="org8f3b124"></a>

# Regex Character Classes and the findall() Method

In this lesson, we&rsquo;ll talk about the findall() method with regular expressions.

    
    import re
    
    resume="""
    JESSE KENDALL
    123 Elm Street, Fall River, MA 02723, Cell: 508-555-5555, Home: 508-555-1234 twemel@charter.net
    
    
    
    SUMMARY OF QUALIFICATIONS
    Dedicated cell phone sales professional with demonstrated success in retail management, product presentation, and customer service. Proven ability to assess client needs; establish rapport, build trust, and close deals. Meet and exceed sales objectives and challenging goals. Proficient in Microsoft Office (Word, Excel, PowerPoint, Access), and H/O billing systems.
    
    SALES SUCCESS
    RETAIL STORE SALES MANAGER, 20xx – 20xx
    ABC CELLULAR, Fall River, MA
    Recruited, hired, trained, developed, and directed retail sales teams for two retail ABC Wireless dealer stores. Oversaw client relations, new account development, and customer service. Supervised administrative functions, inventory, cash flow, merchandising, and operations. Conducted ongoing staff development and personal growth planning for employees.
    
    Implemented a sales-tracking spreadsheet to replace a manual form writing process to increase efficiency.
    Developed innovative and effective marketing programs; exceeded store sales quotas.
    Successfully managed one of the highest-producing ABC Wireless dealer locations in the San Diego market.
    Received several “Sales Manager of the Month” Awards.
    Created a team spirit within the stores that resulted in increased sales, long-term employees, and customer satisfaction.
    CELL PHONE SALES REPRESENTATIVE, 20xx – 20xx
    BCD CELL PHONE HUT, Fall River, MA
    Partnered with a high-performing sales staff to provided quality customer service. Served as a customer advocate; interfaced with the clients’ designated program administrators to provide product and service solutions and meet individual customer needs. Assisted customers with billing and expense management, post sale customer education on wireless service and equipment, issue resolution, and technical troubleshooting.
    
    Effectively delivered post-sale care services, exceeding clients’ expectations in a cost-effective manner.
    Obtained significant business by delivering presale presentations to demonstrate new phone features.
    CUSTOMER SERVICE REPRESENTATIVE, 20xx – 20xx
    CDE CELLULAR SERVICES, Fall River, MA
    Responded to billing inquiries, assisted in technical troubleshooting, and performed rate plan analysis. Provided friendly and professional customer service while answering over 90 inbound calls per day.
    
    Chosen to facilitate training in an outsourced call center.
    EDUCATION
    Bachelor of Arts in Communication (Major: Advertising), 20xx
    XYZ UNIVERSITY, Milwaukee, WI
    
    REFERENCES
    Excellent references provided upon request.
    """
    
    
    phoneRegex=re.compile(r"\d{3}-\d{3}-\d{4}")
    mo=phoneRegex.findall(resume)
    print(mo)

    ['508-555-5555', '508-555-1234']

We used findall() above so we can easily find all of the matches. If we used search() like we did earlier, it would only return the first match.

There is an important distinction between search() and findall(). The search() method returns Match Objects while the findall() method returns a list of strings.

If the regular expression string has 0 or 1 groups, then the findall() method will jstu return a list of strings which each string in the list is the text that was found.

However, with regex objects that have 2 or more groups, the following occurs.

    
    import re
    
    resume="""
    JESSE KENDALL
    123 Elm Street, Fall River, MA 02723, Cell: 508-555-5555, Home: 508-555-1234 twemel@charter.net
    
    
    
    SUMMARY OF QUALIFICATIONS
    Dedicated cell phone sales professional with demonstrated success in retail management, product presentation, and customer service. Proven ability to assess client needs; establish rapport, build trust, and close deals. Meet and exceed sales objectives and challenging goals. Proficient in Microsoft Office (Word, Excel, PowerPoint, Access), and H/O billing systems.
    
    SALES SUCCESS
    RETAIL STORE SALES MANAGER, 20xx – 20xx
    ABC CELLULAR, Fall River, MA
    Recruited, hired, trained, developed, and directed retail sales teams for two retail ABC Wireless dealer stores. Oversaw client relations, new account development, and customer service. Supervised administrative functions, inventory, cash flow, merchandising, and operations. Conducted ongoing staff development and personal growth planning for employees.
    
    Implemented a sales-tracking spreadsheet to replace a manual form writing process to increase efficiency.
    Developed innovative and effective marketing programs; exceeded store sales quotas.
    Successfully managed one of the highest-producing ABC Wireless dealer locations in the San Diego market.
    Received several “Sales Manager of the Month” Awards.
    Created a team spirit within the stores that resulted in increased sales, long-term employees, and customer satisfaction.
    CELL PHONE SALES REPRESENTATIVE, 20xx – 20xx
    BCD CELL PHONE HUT, Fall River, MA
    Partnered with a high-performing sales staff to provided quality customer service. Served as a customer advocate; interfaced with the clients’ designated program administrators to provide product and service solutions and meet individual customer needs. Assisted customers with billing and expense management, post sale customer education on wireless service and equipment, issue resolution, and technical troubleshooting.
    
    Effectively delivered post-sale care services, exceeding clients’ expectations in a cost-effective manner.
    Obtained significant business by delivering presale presentations to demonstrate new phone features.
    CUSTOMER SERVICE REPRESENTATIVE, 20xx – 20xx
    CDE CELLULAR SERVICES, Fall River, MA
    Responded to billing inquiries, assisted in technical troubleshooting, and performed rate plan analysis. Provided friendly and professional customer service while answering over 90 inbound calls per day.
    
    Chosen to facilitate training in an outsourced call center.
    EDUCATION
    Bachelor of Arts in Communication (Major: Advertising), 20xx
    XYZ UNIVERSITY, Milwaukee, WI
    
    REFERENCES
    Excellent references provided upon request.
    """
    
    
    phoneRegex=re.compile(r"(\d{3})-(\d{3}-\d{4})")
    mo=phoneRegex.findall(resume)
    print(mo)

    [('508', '555-5555'), ('508', '555-1234')]

Now, instead of returning a list of strings, a list of tuples containing strings is returned. Each string in the tuple is the contents of each group.


<a id="org4949b7c"></a>

## Character Classes

We&rsquo;ve already looked at one character class (\d). It represents any numeric digit between 0 and 9. Character classes are shortcuts that make our code easier to read and write.

1.  \d

Any numeric digit from 0 to 9.

\D

Any character that is not a numeric digit from 0 to 9.

\w

Any letter, numeric digit, or the underscore character. (Think of this as matching “word” characters.)

\W

Any character that is not a letter, numeric digit, or the underscore character.

\s

Any space, tab, or newline character. (Think of this as matching “space” characters.)

&sect;

Any character that is not a space, tab, or newline.

