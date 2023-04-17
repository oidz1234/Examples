from autoscraper import AutoScraper

scraper = AutoScraper()

scraper.load('coins_scraper')

import time
import random
from playsound import playsound

sound = './usuffer.webm'


def get_coin_value(url):
    return scraper.get_result_exact(url)


"""
return True if we need to stop
return False if we don't
It's complicated.
"""
def super_sophisticated_algorithm_to_determine_mining_value(new, old):
    # if coin is bigger then old
    # and a random number is odd
    # then it's good!

    if new > old:
        rn = random.randint(1, 100)
        if rn % 2 == 0:
            return True
    return False


coin = 'BTC'
old_coin = 0

while True:
    url = f'https://finance.yahoo.com/quote/{coin}-USD'
    coin_value = get_coin_value(url)
    print(coin_value)
    new_coin = float(coin_value[0].replace(',', ''))
    print(f'old = {old_coin}, new = {new_coin}')
    stop = super_sophisticated_algorithm_to_determine_mining_value(new_coin, old_coin)
    if stop:
        playsound(sound, False)
    old_coin =  new_coin
    time.sleep(1
