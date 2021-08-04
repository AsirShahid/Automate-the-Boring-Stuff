#!/usr/bin/env python3

import re, pyperclip

# Create a regex for phone numbers

phoneRegex=re.compile(r"""
# 415-555-0000, 555-0000, (415) 555-0000, 555-0000, ext 12345, ext. 12345, x12345
(
((\d\d\d)|(\(\d\d\d\)))?           # area code (optional)
(\s|-)                             # first seperator
\d\d\d                             # first 3 digits
-                                  # seperator
\d\d\d\d                           # last 4 digits
(((ext(\.)?\s)|x)(\d{2,5}))?       # extension (optional)
)
""", re.VERBOSE)

# Create a regex for email addresses

emailRegex=re.compile(r"""

# some.+_thing@something.com

# We can't just use \w because the name part can have plus signs. So we need to create our own character class.
[a-zA-Z0-9_.+]+  # name part
@                # @ symbol
[a-zA-Z0-9_.+]+  # domain name part

""", re.VERBOSE)

# Get the text off the clipboard

text=pyperclip.paste()


# Extract the email/phone from this text.

extractedPhone=phoneRegex.findall(text)
extractedEmail=emailRegex.findall(text)

allPhoneNumbers=[]
for number in extractedPhone:
    allPhoneNumbers.append(number[0])

# Copy the extracted email/phone to the clipboard.

results="\n".join(allPhoneNumbers) + "\n" +"\n".join(extractedEmail)

print(results)
pyperclip.copy(results)
