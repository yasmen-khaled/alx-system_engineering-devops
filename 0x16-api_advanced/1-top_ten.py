#!/usr/bin/python3
"""
Reddit subreddit.
"""

import requests


def top_ten(subreddit):
    """Print"""
    # Construct the URL
    url = "https://www.reddit.com/r/{}/hot/.json".format(subreddit)

    # Define headers
    headers = {
        "User-Agent": "linux:0x16.api.advanced:v1.0.0 (by /u/bdov_)"
    }

    # Define parameters
    params = {
        "limit": 10
    }

    # Send a GET request
    response = requests.get(url, headers=headers, params=params,
                            allow_redirects=False)

    # Check
    if response.status_code == 404:
        print("None")
        return

    # JSON response
    results = response.json().get("data")

    # Print
    [print(c.get("data").get("title")) for c in results.get("children")]
