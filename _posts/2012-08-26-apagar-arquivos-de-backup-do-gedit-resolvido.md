---
notion_id: 65330f02-8059-4d97-b653-893b02a7690c
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2012-08-26T19:54:00.000Z
last_modified_at: 2022-12-19T20:47:00.000Z
category: Tech
published: true
title: Apagar arquivos de backup do gEdit [resolvido]
tags:
  - acesso
  - backup
  - fica a dica
  - gedit
  - limpeza
  - linha de comando
  - linux
  - x
image: null
---

Quem usa Linux e usa interface gráfica, já deve ter dado graças aos backups do  gEdit, mas em um momento ou outro acabam também virando dor de cabeça.

Gerenciadores de arquivos gráficos como o Nautilus ocultam esses arquivos e quando menos percebemos, estamos lotados deles no disco rígido. Eu passo por esse problema de vez em sempre, e a um tempo vi um post legal do blog "Different.In a good way" onde colocaram um comando bem simples usando o "find" para procurar os arquivos de backup do gEdit, isto é, `*~`.

`find . -name *~ -exec rm '{}' ;`

Entendendo o comando. O **.** é dizendo para olhar a pasta atual (onde você está) e as subpastas dele. O **-name *~** diz pra procurar os arquivos de backup do gEdit. O **-exec rm '{}' ;** é que é o pulo do gato, ele diz que deve remover os arquivos.

Eu mudei um pouco o script, porque gosto de ver o que está acontecendo durante a execução então adicionei um **-v**:

`find . -name *~ -exec rm -v '{}' ;`

E era isso!

via [delete all gedit backup files « Different.In a good way](https://paragasu.wordpress.com/2008/11/18/delete-all-gedit-backup-files/)

