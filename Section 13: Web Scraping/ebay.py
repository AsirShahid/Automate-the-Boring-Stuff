#!/usr/bin/env python3

import bs4,requests

#url="https://www.amazon.com/Automate-Boring-Stuff-Python-2nd/dp/1593279922/"
url="https://www.ebay.com/itm/313628358864"

response = requests.get(url)

print(response.raise_for_status())

soup=bs4.BeautifulSoup(response.text,"html.parser")

elems=soup.select("#prcIsum")

print(elems[0].text)
