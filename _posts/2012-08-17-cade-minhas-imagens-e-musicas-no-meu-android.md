---
id: 1088
title: Cadê minhas imagens e músicas no meu Android?
date: 2012-08-17T10:48:05+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=1088
permalink: /2012/08/17/cade-minhas-imagens-e-musicas-no-meu-android/
headerImage: false
star: false
category: blog
categories:
  - Móvel
  - TIC
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
---
Olá pessoal!

Ontem tive um problema no meu _smartphone_ (atualmente, <a href="http://www.lge.com/br/celular/aparelhos/LG-smartphone-P970.jsp" target="_blank">LG Optimus Black</a> c/ <a href="http://www.cyanogenmod.com/" target="_blank">CyanogenMod</a> 7.2.0 stable) e depois de descobrir a solução (sem nem olhar no nosso oráculo Google) pensei em compartilhar aqui, até porque o procedimento foi bem simples.

**Primeiro, senta que lá vem história&#8230;**

Ontem de manhã eu acordei e foi me arrumar para trabalhar, quando saia de casa e colocava meu _smarphone_ para tocar música, quando para minha surpresa, ele indicava que não havia música. Ok, então resolvi ir no meu Gerenciador de Arquivos (<a href="http://play.google.com/store/apps/details?id=xcxin.filexpert" target="_blank">File Expert</a>) e não é que estava lá as músicas? Reparei que o mesmo ocorria com as minhas imagens. Como foi um dia corrido ontem, eu acabei deixando esse problema para depois&#8230;

Hoje, como não precisaria trabalhar pela manhã, eu resolvi fuçar no _smartphone_ para ver o que aconteceu e para minha surpresa, apareceu fotos! Mas as que tirei ontem no trabalho! Ok, então logo pensei que deveria ser algo em algum _<a href="http://pt.wikipedia.org/wiki/Cache" target="_blank">cache</a>_ que o Android lê, para acelerar a exibição das imagens em miniaturas e informações básicas das MP3!

**Solução (por incrivel que pareça)**

Achei uma pasta dentro de DCIM no meu cartão de memória com o gerenciador de arquivos chamada .thumbnails e resolvi deletar ela. Abri a galeria de fotos e ele levou uns minutos lendo meu cartão e tava lá! BATATA (como diria meu amigo <a title="João Pedro Ermel" href="http://www.facebook.com/jpermel" target="_blank">João</a>)! Todas as fotos! E para completar, as MP3 também voltaram a aparecer no meu player!

**Explicação**

Bom, porque deletei essa pasta? _Thumbnail_ em inglês é miniaturas, e como estava na pasta DCIM (onde ele grava as fotos), logo pensei que esse era o tal _cache_ do Android para fotos&#8230; Agora, porque ele arrumou minhas MP3 se elas ficam no diretório Music? Isso agora é totalmente intuitivo e não tenho embasamento teórico, por tanto, especulação pura: Como deletei uma pasta de cache, deve ter acionado no Android um &#8220;estado de pânico&#8221;, onde ele então para ajustar o erro interno, começou a refazer todos os caches dele.

Era isso! Mais um problema resolvido! Bora pra outro! 😉