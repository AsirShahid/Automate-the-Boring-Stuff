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
