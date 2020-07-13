import frontmatter

from os import listdir
from os.path import isfile, join

dirPath = "_posts/"
files = [f for f in listdir(dirPath) if isfile(join(dirPath, f))]

for file in files:
    print(join(dirPath, file))
    post = frontmatter.load(join(dirPath, file))

    if hasattr(post.metadata, 'star'): del post.metadata['star']
    if hasattr(post.metadata, 'permalink'): del post.metadata['permalink']

    fileWriter = open(join(dirPath, file), 'w')
    fileWriter.write(frontmatter.dumps(post))
    fileWriter.close()
