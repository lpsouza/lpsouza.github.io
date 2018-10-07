---
id: 1111
title: '[Resolvido] Logmein Hamachi 2 (Linux) usando Proxy'
date: 2012-09-12T18:20:58+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=1111
permalink: /2012/09/12/resolvido-logmein-hamachi-2-linux-usando-proxy/
headerImage: false
star: false
category: blog
categories:
  - Linux
  - SegInfo
  - TIC
tags:
  - Acesso
  - Bloqueio
  - Hamachi
  - Hamachi2
  - Linux
  - Logmein
  - Proxy
  - Slackware
  - Ubuntu
  - VPN
---
<p style="text-align: justify">
  <img class="alignright" src="http://www.finestdaily.com/wp-content/uploads/2011/02/LogMeIn-Hamachi.png" alt="" width="154" height="154" />Uso o hamachi ligado no meu servidor de aplicações nas núvens para acesso remoto a ele. Com isso bloqueio no firewall as portas de manutenção (para mim, principalmente 22 e 3306). Mas uma coisa que me deixava de cabelo em pé é que aqui na rede da Unisinos, eu nunca conseguia acessar meu servidor, fazendo com que meu trabalho ficasse para fazer em casa.
</p>

<p style="text-align: justify">
  Ok! Mas hoje isso muda! Li na internet, para ser mais exato um artigo sobre hamachi no slackware na página &#8220;Feel slack mood&#8221;, com o título: &#8220;<a href="http://nitrogl.blogspot.com.br/2012/04/free-hamachi-gui-client-for-linux.html" target="_blank">Free Hamachi GUI Client for Linux</a>&#8220;. Tá certo que lendo, não parece que isso iria mudar meu problema aqui na Universidade, mas&#8230; No tópico &#8220;Making hamachi usable behind an http proxy&#8221;, me bateu uma idéia!
</p>

<p style="text-align: justify">
  Sou usuário Linux, ok, então tenho como configurar um proxy em poucos minutos na minha maquina (usei Squid3). E foi o que aconteceu, configurei meu Squid3, e nas configs do meu hamachi (/var/lib/logmein-hamachi/h2-engine-override.cfg) e ficou:
</p>

<pre>Conn.PxyAddr        127.0.0.1
Conn.PxyPort        3128
Conn.PxySave        1
Conn.Mask           4
Conn.DisableUpnp    1
Core.AutoLogin      1
Login.OnLaunch      1</pre>

<p style="text-align: justify">
  Eis que estou acessando meu servidor muito tranquilamente! #ficaadica
</p>