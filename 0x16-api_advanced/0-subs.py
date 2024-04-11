#!/usr/bin/python3

"""This module contains a function that Reddit API"""


import requests


def number_of_subscribers(subreddit):
    url = f"https://www.reddit.com/r/{subreddit}/about"
    headers = {'User-Agent': 'Custom User Agent'}

    response = requests.get(url, allow_redirects=False)
    if response.status_code == 200:
        data = response.json()
        subscribers = data['data']['subscribers']
        return subscribers
    else:
        return 0
