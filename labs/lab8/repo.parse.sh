#!/bin/python3

import json

with open('../../data/schacon.repos.json', 'r') as file:
    data = json.load(file)

with open('chacon.csv', 'w') as csv_file:
    for i in range(min(5, len(data))):
        entry = data[i]
        name = entry.get('name', '')
        html_url = entry.get('html_url', '')
        updated_at = entry.get('updated_at', '')
        visibility = entry.get('visibility', '')

        line = f"{name},{html_url},{updated_at},{visibility}\n"
        csv_file.write(line)
        print(line)
