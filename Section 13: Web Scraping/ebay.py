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
