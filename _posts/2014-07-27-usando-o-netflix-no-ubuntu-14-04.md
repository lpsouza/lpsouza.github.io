---
id: 1311
title: Usando o Netflix no Ubuntu 14.04
date: 2014-07-27T19:06:38+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1311
permalink: /2014/07/27/usando-o-netflix-no-ubuntu-14-04/
image: /wp-content/uploads/2014/07/netflix.jpg
headerImage: false
star: false
category: blog
categories:
  - Linux
  - TIC
tags:
  - Computadores
  - Emaulator
  - Fica a dica
  - Filmes
  - Interface Gráfica
  - Linux
  - Netflix
  - Problema
  - Problemas
  - Seriados
  - Séries
  - Silverlight
  - Ubuntu
  - Windows
  - Wine
---
Estou usando o **Ubuntu 14.04** no meu note e a tempos queria usar o Netflix nele, mas como para usar, precisa do [Silverlight](http://pt.wikipedia.org/wiki/Silverlight) e este é proprietário da Microsoft, fica um pouco complicado... Será?

Pesquisei na internet e encontrei um artigo bem legal no **Viva o Linux**, mas como todo o bom artigo para linux, nunca está 100% completo. Seja porque ele fala para instalar em uma versão, e tu está usando outra, ou porque tu não tem a biblioteca que o autor do artigo tinha quando escreveu, ou simplesmente porque ele esqueceu de algum passo. Isso não é relevante, porque eu fui atras e completei as lacunas!

Vamos lá:

Para instalar o **Netflix Desktop** no Ubuntu, precisamos adicionar o repositório do desenvolvedor do aplicativo:

`sudo apt-add-repository ppa:ehoover/compholio`

Após isso, podemos instalar o aplicativo:

`sudo apt-get update && sudo apt-get install netflix-desktop`

Ok, depois disto você executa o Netflix Desktop e para sua surpresa (ou não), ele não roda! Alegando a falta das fontes da Microsoft e perguntando se tu quer instalar. Você aceita e para terminar bem, ele avisa que não foi possível instalar porque você não aceitou a instalação! Complicado né? Que bom que a solução não é! 😀

Vamos instalar as fontes da Microsoft em nosso Linux então:

`sudo apt-get install ttf-mscorefonts-installer`

Ele vai questionar se quer aceitar a instalação, vai na fé que esse funciona!

Após terminar, execute o Netflix Desktop e logue na conta! Seja feliz!

Fontes:

* [Netflix no Linux Mint, Ubuntu, Fedora e CentOS](http://www.vivaolinux.com.br/dica/Netflix-no-Linux-Mint-Ubuntu-Fedora-e-CentOS)
* [How can I accept the Microsoft EULA agreement for ttf-mscorefonts-installer?](http://askubuntu.com/questions/16225/how-can-i-accept-the-microsoft-eula-agreement-for-ttf-mscorefonts-installer)
