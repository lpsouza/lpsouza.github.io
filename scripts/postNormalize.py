import frontmatter

from os import listdir, remove
from os.path import isfile, join

dirPath = "_posts/"
files = [f for f in listdir(dirPath) if isfile(join(dirPath, f))]

for file in files:
    post = frontmatter.load(join(dirPath, file))

    # print(post.metadata['category'])

    if post.metadata['category'] == "blog":
        print("Title: " + post.metadata['title'])
        print("Categories: Blogging, Tech, Linux, Games")
        newCategory = raw_input("New category: ")
        post.metadata['category'] = newCategory

    # if "id" in post.metadata: del post.metadata['id']
    # if "guid" in post.metadata: del post.metadata['guid']
    # if "star" in post.metadata: del post.metadata['star']
    # if "permalink" in post.metadata: del post.metadata['permalink']
    # if "categories" in post.metadata: del post.metadata['categories']
    # if "aktt_tweeted" in post.metadata: del post.metadata['aktt_tweeted']
    # if "aktt_notify_twitter" in post.metadata: del post.metadata['aktt_notify_twitter']
    # if "tumblrize_post-id" in post.metadata: del post.metadata['tumblrize_post-id']
    # if "tumblrize_post-type" in post.metadata: del post.metadata['tumblrize_post-type']

    # post.metadata['published'] = True

        if newCategory == "del" :
            remove(join(dirPath, file))
        else :
            fileWriter = open(join(dirPath, file), 'w')
            fileWriter.write(frontmatter.dumps(post).encode('utf-8'))
            fileWriter.close()
