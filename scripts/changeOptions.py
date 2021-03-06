# Script to change categories on posts
import frontmatter

from os import listdir, remove, system
from os.path import isfile, join

dirPath = "_posts/"
files = [f for f in listdir(dirPath) if isfile(join(dirPath, f))]
files.sort()
posts = [frontmatter.load(join(dirPath, f)) for f in files]

for file in files:
    post = frontmatter.load(join(dirPath, file))

    post.metadata['category'] = "Tech"

    fileWriter = open(join(dirPath, file), 'w')
    fileWriter.write(frontmatter.dumps(post))  # .encode('utf-8')
    fileWriter.close()
