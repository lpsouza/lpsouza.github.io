# Script to "normalize" all posts
# (remove unnecessary metadata options from my old Wordpress blog)
import frontmatter

from os import listdir, remove
from os.path import isfile, join
from datetime import datetime
from slugify import slugify

title = input("Title: ")

today = datetime.now()
dirPath = "_posts/"
file = today.strftime("%Y-%m-%d")+"-"+slugify(title)+".md"

fileWriter = open(join(dirPath, file), 'w')

fileWriter.write('---\n')
fileWriter.write('layout: post\n')
fileWriter.write('author: lpsouza\n')
fileWriter.write('date: \'' + today.strftime("%Y-%m-%d %H:%M") + ' -0300\'\n')
fileWriter.write('category: Blogging\n')
fileWriter.write('published: false\n')
fileWriter.write('title: ' + title + '\n')
fileWriter.write('---\n')

fileWriter.close()
