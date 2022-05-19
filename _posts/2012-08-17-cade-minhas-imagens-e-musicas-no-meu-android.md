---
notion_id: 2d082523-84a1-4d64-acc7-9e3d58c9a286
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2012-08-17T10:48:00.000Z
last_modified_at: 2022-05-19T22:03:00.000Z
category: Tech
published: true
title: Cadê minhas imagens e músicas no meu Android?
tags:
  - Android
  - Cache
  - Fotos
  - Google
  - Imagens
  - Música
  - Problema
  - Smartphone
  - Thumbnail
image: null
---

Olá pessoal!

Ontem tive um problema no meu _smartphone_ (atualmente, [LG Optimus Black](http://www.lge.com/br/celular/aparelhos/LG-smartphone-P970.jsp) c/ [CyanogenMod](http://www.cyanogenmod.com/) 7.2.0 stable) e depois de descobrir a solução (sem nem olhar no nosso oráculo Google) pensei em compartilhar aqui, até porque o procedimento foi bem simples.

###  Primeiro, senta que lá vem história

Ontem de manhã eu acordei e foi me arrumar para trabalhar, quando saia de casa e colocava meu _smarphone_ para tocar música, quando para minha surpresa, ele indicava que não havia música. Ok, então resolvi ir no meu Gerenciador de Arquivos ([File Expert](http://play.google.com/store/apps/details?id=xcxin.filexpert)) e não é que estava lá as músicas? Reparei que o mesmo ocorria com as minhas imagens. Como foi um dia corrido ontem, eu acabei deixando esse problema para depois...

Hoje, como não precisaria trabalhar pela manhã, eu resolvi fuçar no _smartphone_ para ver o que aconteceu e para minha surpresa, apareceu fotos! Mas as que tirei ontem no trabalho! Ok, então logo pensei que deveria ser algo em algum _[cache](http://pt.wikipedia.org/wiki/Cache)_ que o Android lê, para acelerar a exibição das imagens em miniaturas e informações básicas das MP3!

###  Solução (por incrível que pareça)

Achei uma pasta dentro de DCIM no meu cartão de memória com o gerenciador de arquivos chamada .thumbnails e resolvi deletar ela. Abri a galeria de fotos e ele levou uns minutos lendo meu cartão e tava lá! BATATA (como diria meu amigo [João](http://www.facebook.com/jpermel))! Todas as fotos! E para completar, as MP3 também voltaram a aparecer no meu player!

###  Explicação

Bom, porque deletei essa pasta? _Thumbnail_ em inglês é miniaturas, e como estava na pasta DCIM (onde ele grava as fotos), logo pensei que esse era o tal _cache_ do Android para fotos... Agora, porque ele arrumou minhas MP3 se elas ficam no diretório Music? Isso agora é totalmente intuitivo e não tenho embasamento teórico, por tanto, especulação pura: Como deletei uma pasta de cache, deve ter acionado no Android um "estado de pânico", onde ele então para ajustar o erro interno, começou a refazer todos os caches dele.

Era isso! Mais um problema resolvido! Bora pra outro! 😉

