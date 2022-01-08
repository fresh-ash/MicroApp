# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.

import time

from logic.engine import read_data


def print_hi(url):
    response = read_data(url)
    if response.status_code != 200:
        with open("errors.txt", "a") as of:
            of.write(response.raw)
    else:
        with open("log.txt", "a") as of:
            of.write(response.json()["message"][0] + "\n")
    time.sleep(60)


if __name__ == '__main__':
    while True:
        print_hi("https://game-of-words.herokuapp.com/gameofwords/adj&noun/?limit=1")


