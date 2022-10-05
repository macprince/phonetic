#!/usr/bin/env python3
import os
import sys
import yaml
from yaml.loader import SafeLoader

with open(os.path.join(sys.path[0],'phonetic.yaml')) as f:
    data = yaml.load(f, Loader=SafeLoader)
output = []
chars = list(sys.argv[1].strip().upper())
for x in chars:
    if x in data.keys():
        output.append(data[x])
    else:
        output.append(x)

print(" ".join(output))