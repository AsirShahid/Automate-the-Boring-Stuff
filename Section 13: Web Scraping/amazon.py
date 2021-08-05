#!/usr/bin/env python3

import bs4,requests

#url="https://www.amazon.com/Automate-Boring-Stuff-Python-2nd/dp/1593279922/"
url="https://www.ebay.com/itm/313628358864?epid=17038376458&hash=item4905b4f8d0:g:CcIAAOSwhXJf~bks"

headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36'}

response = requests.get(url, headers=headers)

print(response.raise_for_status())

soup=bs4.BeautifulSoup(response.text,"html.parser")

elems=soup.select("#prcIsum")

print(elems)
