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

    category = post.metadata['category']
    title = post.metadata['title']

    if (category == "Blogging"):
        print("[" + category + "] " + file)
        # newCategory = input("Nova categoria:")
        newCategory = "Etc"

        post.metadata['category'] = newCategory

        fileWriter = open(join(dirPath, file), 'w')
        fileWriter.write(frontmatter.dumps(post))  # .encode('utf-8')
        fileWriter.close()
