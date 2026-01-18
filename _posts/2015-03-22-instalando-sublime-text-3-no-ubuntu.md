---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2015-03-22 14:00:00-03:00
image: /assets/2015-03-22-instalando-sublime-text-3-no-ubuntu/imagem-sublime.png
last_modified_at: 2023-10-15 01:01:20.298377-03:00
layout: post
published: true
tags:
- apt
- apt-get
- desenvolvimento
- editor
- fica-a-dica
- install
- installer
- linux
- repository
- sublime-text
- sublime-text-3
- ubuntu
title: Instalando Sublime Text 3 no Ubuntu
---

Para quem desenvolve, acabam descobrindo que um dos melhores editores para código é o **Sublime Text**. Eu levei um bom tempo pra perceber mas quando o fiz, não troquei mais! Agora, a instalação dele no Ubuntu pode ser um processo chato pra uns, principalmente porque ele não faz parte dos pacotes de instalação padrão do Ubuntu e nem no repositório "non-free" deles!

Então encontrei no [Launchpad](https://launchpad.net/~webupd8team/+archive/ubuntu/sublime-text-3) um repositório APT para o Sublime Text!

```bash

sudo add-apt-repository ppa:webupd8team/sublime-text-3

sudo apt-get update

sudo apt-get install sublime-text-installer

```

Pronto! Sublime Text instalado em seu Ubuntu! 😀
