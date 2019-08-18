---
id: 1400
title: Instalando Sublime Text 3 no Ubuntu
date: 2015-03-22T17:00:23+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1400
permalink: /2015/03/22/instalando-sublime-text-3-no-ubuntu/
image: https://luizsouza.com.br/wp-content/uploads/2015/03/imagem-sublime.png
headerImage: false
star: false
category: blog
categories:
  - Linux
  - Programação
  - TIC
tags:
  - APT
  - apt-get
  - Desenvolvimento
  - Editor
  - Fica a dica
  - Install
  - Installer
  - Linux
  - repository
  - Sublime Text
  - Sublime Text 3
  - Ubuntu
---
Para quem desenvolve, acabam descobrindo que um dos melhores editores para código é o **Sublime Text**. Eu levei um bom tempo pra perceber mas quando o fiz, não troquei mais! Agora, a instalação dele no Ubuntu pode ser um processo chato pra uns, principalmente porque ele não faz parte dos pacotes de instalação padrão do Ubuntu e nem no repositório "non-free" deles!

Então encontrei no [Launchpad](https://launchpad.net/~webupd8team/+archive/ubuntu/sublime-text-3) um repositório APT para o Sublime Text!

```bash
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
```

Pronto! Sublime Text instalado em seu Ubuntu! 😀
