#!/usr/bin/python3

""" This module conains a function that checks for the top ten
    hot posts on Reddit.
"""


import requests


def top_ten(subreddit):
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {'User-Agent': 'Justin'}

    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        data = response.json()
        posts = data['data']['children'][:10]
        for hot_post in posts:
            print(hot_post['data']['title'])
    else:
        print("None")
