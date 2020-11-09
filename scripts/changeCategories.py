# Script to change categories on posts
import frontmatter

from consolemenu import *
from consolemenu.items import *

from os import listdir, remove, system
from os.path import isfile, join

def changeCategory(file):
    post = frontmatter.load(file)

    print("Title: " + post.metadata['title'])
    print(post.content[:150] + "...")
    print("\nCategories:")
    categories = [p.metadata['category'] for p in posts]
    categories = set(categories)
    categories = (list(categories))
    for category in categories:
        print("- " + category)
    print("(type \"del\" for deletion or \"cancel\" to cancel change category operation\n")
    print("Actual category: " + post.metadata['category'])
    newCategory = input("New category: ")
    post.metadata['category'] = newCategory

    if newCategory != "cancel":
        if newCategory == "del":
            remove(file)
        else:
            fileWriter = open(file, 'w')
            fileWriter.write(frontmatter.dumps(post)) #.encode('utf-8')
            fileWriter.close()

dirPath = "_posts/"
files = [f for f in listdir(dirPath) if isfile(join(dirPath, f))]
files.sort()
posts = [frontmatter.load(join(dirPath, f)) for f in files]

mainMenu = ConsoleMenu("Category manager")

for file in files:
    post = frontmatter.load(join(dirPath, file))
    title = post.metadata['title']
    category = post.metadata['category']
    title = ("[" + category + "] " + title[:40] + "...") if len(title) > 40 else "[" + category + "] " + title
    item = FunctionItem(title, changeCategory, [join(dirPath, file)])
    mainMenu.append_item(item)

mainMenu.show()
