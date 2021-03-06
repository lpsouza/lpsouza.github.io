---
author: lpsouza
category: Tech
date: 2012-09-12 18:20:58
layout: post
published: true
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
title: '[Resolvido] Logmein Hamachi 2 (Linux) usando Proxy'
---

Uso o hamachi ligado no meu servidor de aplicações nas núvens para acesso remoto a ele. Com isso bloqueio no firewall as portas de manutenção (para mim, principalmente 22 e 3306). Mas uma coisa que me deixava de cabelo em pé é que aqui na rede da Unisinos, eu nunca conseguia acessar meu servidor, fazendo com que meu trabalho ficasse para fazer em casa.

Ok! Mas hoje isso muda! Li na internet, para ser mais exato um artigo sobre hamachi no slackware na página "Feel slack mood", com o título: ["Free Hamachi GUI Client for Linux"](http://nitrogl.blogspot.com.br/2012/04/free-hamachi-gui-client-for-linux.html). Tá certo que lendo, não parece que isso iria mudar meu problema aqui na Universidade, mas... No tópico "Making hamachi usable behind an http proxy", me bateu uma idéia!

Sou usuário Linux, ok, então tenho como configurar um proxy em poucos minutos na minha maquina (usei Squid3). E foi o que aconteceu, configurei meu Squid3, e nas configs do meu hamachi (/var/lib/logmein-hamachi/h2-engine-override.cfg) e ficou:

```ini
Conn.PxyAddr        127.0.0.1
Conn.PxyPort        3128
Conn.PxySave        1
Conn.Mask           4
Conn.DisableUpnp    1
Core.AutoLogin      1
Login.OnLaunch      1
```

Eis que estou acessando meu servidor muito tranquilamente! #ficaadica