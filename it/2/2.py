#!/usr/bin/python

import re
import dateutil.parser as dparser   # pip install python-dateutil

import sys

if len(sys.argv) < 2:
    print "file name param is required"
    sys.exit(1)

file_name = sys.argv[1]

with open(file_name) as f:
    strings = f.readlines()

if not strings:
    print "file is empty"
    sys.exit(1)

recs = {}

for s in strings:
    try:
        date = dparser.parse(s, fuzzy=True)
    except:
        date = None

    g = re.search(r'(?<=@Comment:\s)(.+)', s)
    if date:
        if g:
            recs[date] = g.group(0)
        else:
            recs[date] = ''

for k in sorted(recs.keys(), reverse=True):
    print "time: {}, commet:{}".format(k, recs[k])
