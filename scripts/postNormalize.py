import frontmatter

from os import listdir
from os.path import isfile, join

dirPath = "_posts/"
files = [f for f in listdir(dirPath) if isfile(join(dirPath, f))]

for file in files:
    print(join(dirPath, file))
    post = frontmatter.load(join(dirPath, file))

    if "id" in post.metadata: del post.metadata['id']
    if "guid" in post.metadata: del post.metadata['guid']
    if "star" in post.metadata: del post.metadata['star']
    if "permalink" in post.metadata: del post.metadata['permalink']
    if "categories" in post.metadata: del post.metadata['categories']
    if "aktt_tweeted" in post.metadata: del post.metadata['aktt_tweeted']
    if "aktt_notify_twitter" in post.metadata: del post.metadata['aktt_notify_twitter']

    fileWriter = open(join(dirPath, file), 'w')
    fileWriter.write(frontmatter.dumps(post))
    fileWriter.close()
