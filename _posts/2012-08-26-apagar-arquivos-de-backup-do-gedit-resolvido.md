---
id: 1049
title: 'Apagar arquivos de backup do gEdit [resolvido]'
date: 2012-08-26T19:54:15+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=1049
permalink: /2012/08/26/apagar-arquivos-de-backup-do-gedit-resolvido/
headerImage: false
star: false
category: blog
categories:
  - Linux
  - TIC
tags:
  - Acesso
  - Backup
  - Fica a dica
  - gEdit
  - Limpeza
  - Linha de Comando
  - Linux
  - X
---
Quem usa Linux e usa interface gráfica, já deve ter dado graças aos backups do  gEdit, mas em um momento ou outro acabam também virando dor de cabeça.

Gerenciadores de arquivos gráficos como o Nautilus ocultam esses arquivos e quando menos percebemos, estamos lotados deles no disco rígido. Eu passo por esse problema de vez em sempre, e a um tempo vi um post legal do blog "Different.In a good way" onde colocaram um comando bem simples usando o "find" para procurar os arquivos de backup do gEdit, isto é, `*~`.

`find . -name *~ -exec rm '{}' ;`

Entendendo o comando. O **.** é dizendo para olhar a pasta atual (onde você está) e as subpastas dele. O **-name *~** diz pra procurar os arquivos de backup do gEdit. O **-exec rm '{}' ;** é que é o pulo do gato, ele diz que deve remover os arquivos.

Eu mudei um pouco o script, porque gosto de ver o que está acontecendo durante a execução então adicionei um **-v**:

`find . -name *~ -exec rm -v '{}' ;`

E era isso!

via [delete all gedit backup files « Different.In a good way](https://paragasu.wordpress.com/2008/11/18/delete-all-gedit-backup-files/)
