---
author: lpsouza
category: blog
date: 2012-05-15 09:30:55+00:00
layout: post
published: true
tags:
- Apache
- Bloqueio
- DOS
- Internet
- Linux
- SegInfo
- Server
- Servidor
title: Bloquear versões antigas de browsers no Apache
---

Aqui vai uma config bem legal para melhorar a segurança no acesso ao servidor Web. Com essa configuração, usando o mod_setenvif do Apache2, ele verifica as versões mais antigas dos browsers e bane o acesso a eles.

O código aqui (você pode colocar no apache.conf ou similar, dependendo da distribuição de linux usada):

```apache
<IfModule mod_setenvif.c>

# Mozilla prior to 4.0
BrowserMatchNoCase ^Mozilla/[0-3] legacy=mozilla

# malignant Mozilla versions
BrowserMatchNoCase ^.?mozilla(?:$|/(?:(?:[^45]|[45].(?:[^0]|0S))|(?:(?:[45].0s(compatible;?)|5.0(?:s((?:en(?:-US)?)?))?)$))) legacy=mozilla

# MSIE prior to 7.0
BrowserMatchNoCase MSIED+[0-6].[d.]* legacy=msie

# Firefox prior to 4.0
BrowserMatchNoCase FirefoxD+[0-3].[d.]* legacy=firefox

# Chrome prior to 9.0
BrowserMatchNoCase ChromeD+[0-9].[d.]* legacy=chrome

# Safari (inc Mobile) prior to 534
BrowserMatchNoCase SafariD+(?:[0-4]+|d?53[0-3].[d.]*) legacy=safari

# Opera prior to 9.80
BrowserMatchNoCase OperaD+(?:[0-8][d.]*|9.[0-7]) legacy=opera

# Seamonkey prior to 2.6
BrowserMatchNoCase SeaMonkeyD+(?:[01]|2.[0-5]) legacy=seamonkey

Deny from env=legacy
</IfModule>
```

Enfrentei alguns problemas ao usar essas configurações e vou relatar aqui pra vocês (até para ver se vai mesmo valer a pena para você o uso dela):

* Aconteceu um falso-positivo com browsers móveis (no meu caso aconteceu basicamente com Androids). Depois de analisar o log do servidor, vi que o problema era na linha do Safari (é, do Safari olha só) e ajustei mudando de `BrowserMatchNoCase SafariD+(?:[0-4]+|d?53[0-3].[d.]*) legacy=safari` para `BrowserMatchNoCase SafariD+(?:[0-4]+|d?53[0-2].[d.]*) legacy=safari`.
* Outro problema que aconteceu, e esse realmente não obtive muito resultado, foi quando o browser (acontece principalmente com o Internet Explorer) está com algum malware ou programa de terceiros que modificam o User-Agent do browser para outra versão. Muitas vezes nem reinstalando a versão mais recente resolve. Neste caso eu arrumava trocando o browser com problema por outro (ex: de Internet Explorer para Chrome ou Firefox).

Para meu caso que recebia muito DOS provindo de sistemas que usavam User-Agent mais antigo, resolveu bem direitinho!

via [How to block old versions of browsers Apache Web Server forum at WebmasterWorld](http://www.webmasterworld.com/apache/4440771.htm).