---
author: lpsouza
category: blog
date: 2015-03-22 17:00:23+00:00
image: https://luizsouza.com.br/wp-content/uploads/2015/03/imagem-sublime.png
layout: post
published: true
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