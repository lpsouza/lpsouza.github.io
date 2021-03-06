---
author: lpsouza
category: Tech
date: 2015-01-31 15:22:49
layout: post
published: true
tags:
- Acesso Remoto
- Computadores
- Fica a dica
- Informática
- Linux
- NET
- Net Combo
- Net Virtua
- Networking
- PuTTY
- SSH
- Windows
title: Problema NET Virtua e o SSH [Resolvido]
---

Este é um problema que estava se tornando recorrente desde que troquei da GVT para o NET Virtua (Net Combo). Conectava a meus servidores linux com SSH (no meu caso usando o PuTTY) e alguns minutos depois, perdia a conexão (quando deixava de usar a tela, por exemplo, fazendo algum backup ou transferência entre servidores).

Então como tive recentemente problemas ao sincronizar um git que fiz entre servidores, resolvi verificar se alguém mais teve este problema, e achei! Neste post ["Problema NET Virtua tranca SSH"](http://www.delete.com.br/problema-net-virtua-tranca-ssh/) ele explica que o problema está na NET que derruba conexões que ficam "ociosas" (Idle) e temos que enviar um "pacote de vida" (Keep Alive). Ele explica em Linux, mas veremos no mundo Windows como fazer:

* Coloque o seu host de acesso ou dê load em um salvo
* Vá em "connection" e lá veja a opção "Seconds between keepalives (0 to turn off)" e coloque 60
* Clique em "Open"
* Pronto! 🙂

![Putty](https://luizsouza.com.br/wp-content/upload/2015/01/putty.png)