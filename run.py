#!/usr/bin/env python

import re
import sys
import commands

cmd = sys.argv[1]
language = "swift"
project = "https://github.com/yangyanzhan/Swift-Solutions"
judge = "leetcode"

if cmd == "fetch":
    url = sys.argv[2]
    match = re.search("(.*)/#/description$", url)
    url = match.group(1)
    match = re.search("/([^/]+)$", url)
    name = match.group(1)
    filepath = "./solutions/leetcode/%s.%s" % (name, language)
    content = """/**
 * @author yangyanzhan
 * @email yangyanzhan@gmail.com
 * @github_project %s
 * @online_judge %s
 * @problem_name %s
 * @problem_url %s
 */

""" % (project, judge, name, url)
    f = open(filepath, "w")
    f.write(content)
    f.close()
elif cmd == "submit":
    commands.getstatusoutput("git add .")
    commands.getstatusoutput('git commit -m "add solutions"')
else:
    print "error"
