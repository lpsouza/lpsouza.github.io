# Script to change categories on posts
import frontmatter

from os import listdir
from os.path import isfile, join

dirPath = "_posts/"
files = [f for f in listdir(dirPath) if isfile(join(dirPath, f))]
files.sort()

for file in files:
    post = frontmatter.load(join(dirPath, file))
    category = post.metadata['category']
    if (category == "blog"):
        print("[" + category + "] " + file)
