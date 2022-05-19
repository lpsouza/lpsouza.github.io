---
notion_id: c0841a3b-f5d9-4bc2-8c55-534bd78b1ecb
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2015-01-31T15:22:00.000Z
last_modified_at: 2022-05-19T22:04:00.000Z
category: Tech
published: true
title: Problema NET Virtua e o SSH [Resolvido]
tags:
  - Acesso Remoto
  - Computadores
  - Fica a dica
  - Informática
  - linux
  - NET
  - Net Combo
  - Net Virtua
  - Networking
  - PuTTY
  - SSH
  - windows
image: null
---

Este é um problema que estava se tornando recorrente desde que troquei da GVT para o NET Virtua (Net Combo). Conectava a meus servidores linux com SSH (no meu caso usando o PuTTY) e alguns minutos depois, perdia a conexão (quando deixava de usar a tela, por exemplo, fazendo algum backup ou transferência entre servidores).

Então como tive recentemente problemas ao sincronizar um git que fiz entre servidores, resolvi verificar se alguém mais teve este problema, e achei! Neste post ["Problema NET Virtua tranca SSH"](http://www.delete.com.br/problema-net-virtua-tranca-ssh/) ele explica que o problema está na NET que derruba conexões que ficam "ociosas" (Idle) e temos que enviar um "pacote de vida" (Keep Alive). Ele explica em Linux, mas veremos no mundo Windows como fazer:

* Coloque o seu host de acesso ou dê load em um salvo

* Vá em "connection" e lá veja a opção "Seconds between keepalives (0 to turn off)" e coloque 60

* Clique em "Open"

* Pronto! 🙂

![Putty](/wp-content/uploads/2015/01/putty.png)

