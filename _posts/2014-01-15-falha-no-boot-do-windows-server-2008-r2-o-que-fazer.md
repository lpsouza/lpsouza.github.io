---
id: 1289
title: 'Falha no boot do Windows Server 2008 R2 - O que fazer?'
date: 2014-01-15T12:04:21+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1289
permalink: /2014/01/15/falha-no-boot-do-windows-server-2008-r2-o-que-fazer/
image: https://luizsouza.com.br/wp-content/uploads/2014/01/repair.jpg
headerImage: false
star: false
category: blog
categories:
  - TIC
tags:
  - Boot
  - Informática
  - Networking
  - Problema
  - Prompt de Comando
  - Servidores
  - Sistema Operacional
  - Solução
  - Windows
  - Windows Server
  - Windows Server 2008 R2
---
Olha uma coisa que eu estou sofrendo de ontem pra cá é isso - Problema de boot em um Windows Server 2008 R2 de produção do colégio onde presto serviços. Ele é um servidor virtualizado em um Hyper-V Server 2012 e desde que migrei de um dos servidores Hyper-V para outro, simplesmente o boot deixou de funcionar.

Desde ontem as 21hs até agora, estou lendo diversos blogs, tutoriais de ajuda e fóruns sobre o assunto e vi que existem algumas diversas ferramentas para a correção de problemas de boot em sistemas operacionais da linha server e client. Deixo abaixo algumas das mais importantes que achei:

* Bootrec /FixMbr = Corrige o MBR (Master Boot Record).
* Bootrec /FixBoot = Corrige os arquivos de boot.
* Bootsect /nt60 all /force = Força a criação do setor de boot em todos os discos.
* Bootrec /RebuildBcd = Recria todos os arquivos de boot.
* StartRep = Inicia um wizard que faz diversas analises no sistema de boot, desde os arquivos até chamadas no registro do computador.

Lembro que como você não consegue inicializar o disco, deve usar o DVD de instalação do sistema operacional, usando a opção de reparação e a opção de prompt.

O que resolveu meus problemas foi o último, o StartRep. Inicializei ele, levou seus 5 minutos para verificar tudo e logo depois me pediu para concluir, reinicializou automaticamente e o boot começou a acontecer!

Sistemas Microsoft tem diversos comandos interessantes em modo console, que já está começando a me deixar com vontade de sempre deixar os servidores em modo "server core"! 😛

Até a próxima!
