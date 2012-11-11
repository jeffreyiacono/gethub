import sys
import requests
import getpass

url = 'https://api.github.com/user'

gh_username = raw_input("Enter in a github username:\n")
gh_password = getpass.getpass("Enter in the github user password (hidden):\n")

auth = (gh_username, gh_password)

r = requests.get(url, auth=auth)
print r.content
