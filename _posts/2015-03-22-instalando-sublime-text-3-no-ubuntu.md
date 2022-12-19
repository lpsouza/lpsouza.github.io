---
notion_id: 71415aed-a655-4395-9845-594a97ebf473
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2015-03-22T17:00:00.000Z
last_modified_at: 2022-12-19T20:47:00.000Z
category: Tech
published: true
title: Instalando Sublime Text 3 no Ubuntu
tags:
  - apt
  - apt-get
  - desenvolvimento
  - editor
  - fica a dica
  - install
  - installer
  - linux
  - repository
  - sublime text
  - sublime text 3
  - ubuntu
image: https://luizsouza.com/wp-content/uploads/2015/03/imagem-sublime.png
---

Para quem desenvolve, acabam descobrindo que um dos melhores editores para código é o **Sublime Text**. Eu levei um bom tempo pra perceber mas quando o fiz, não troquei mais! Agora, a instalação dele no Ubuntu pode ser um processo chato pra uns, principalmente porque ele não faz parte dos pacotes de instalação padrão do Ubuntu e nem no repositório "non-free" deles!

Então encontrei no [Launchpad](https://launchpad.net/~webupd8team/+archive/ubuntu/sublime-text-3) um repositório APT para o Sublime Text!

```bash

sudo add-apt-repository ppa:webupd8team/sublime-text-3

sudo apt-get update

sudo apt-get install sublime-text-installer

```

Pronto! Sublime Text instalado em seu Ubuntu! 😀

