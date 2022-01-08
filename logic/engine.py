import requests


def read_data(url, params):
    return requests.get(url, params=params)

