# Script to change categories on posts
import frontmatter

from consolemenu import *
from consolemenu.items import *

from os import listdir, remove, system
from os.path import isfile, join

def changeCategory(file):
    post = frontmatter.load(file)

    print("Title: " + post.metadata['title'])
    print("Categories:\n- Blogging\n -Tech\n -Linux\n -Games\n")
    print("Actual category: " + post.metadata['category'])
    newCategory = input("New category: ")
    post.metadata['category'] = newCategory

    if newCategory == "del" :
        remove(file)
    else :
        fileWriter = open(file, 'w')
        fileWriter.write(frontmatter.dumps(post).encode('utf-8'))
        fileWriter.close()

dirPath = "_posts/"
files = [f for f in listdir(dirPath) if isfile(join(dirPath, f))]
files.sort()

mainMenu = ConsoleMenu("Category manager")

for file in files:
    post = frontmatter.load(join(dirPath, file))
    title = post.metadata['title']
    category = post.metadata['category']
    title = ("[" + category + "] " + title[:50] + "..") if len(title) > 50 else "[" + category + "] " + title
    item = FunctionItem(title, changeCategory, [join(dirPath, file)])
    mainMenu.append_item(item)

mainMenu.show()
