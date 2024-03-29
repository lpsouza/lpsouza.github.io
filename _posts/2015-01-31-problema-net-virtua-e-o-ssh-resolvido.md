---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2015-01-31 13:22:00-02:00
image: null
last_modified_at: 2023-10-15 01:01:20.296160-03:00
layout: post
published: true
tags:
- acesso-remoto
- computadores
- fica-a-dica
- informática
- linux
- net
- net-combo
- net-virtua
- networking
- putty
- ssh
- windows
title: Problema NET Virtua e o SSH [Resolvido]
---

Este é um problema que estava se tornando recorrente desde que troquei da GVT para o NET Virtua (Net Combo). Conectava a meus servidores linux com SSH (no meu caso usando o PuTTY) e alguns minutos depois, perdia a conexão (quando deixava de usar a tela, por exemplo, fazendo algum backup ou transferência entre servidores).

Então como tive recentemente problemas ao sincronizar um git que fiz entre servidores, resolvi verificar se alguém mais teve este problema, e achei! Neste post ["Problema NET Virtua tranca SSH"](http://www.delete.com.br/problema-net-virtua-tranca-ssh/) ele explica que o problema está na NET que derruba conexões que ficam "ociosas" (Idle) e temos que enviar um "pacote de vida" (Keep Alive). Ele explica em Linux, mas veremos no mundo Windows como fazer:

* Coloque o seu host de acesso ou dê load em um salvo

* Vá em "connection" e lá veja a opção "Seconds between keepalives (0 to turn off)" e coloque 60

* Clique em "Open"

* Pronto! 🙂

![Putty](/wp-content/uploads/2015/01/putty.png)
