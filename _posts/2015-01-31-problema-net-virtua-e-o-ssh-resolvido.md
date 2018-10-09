---
id: 1353
title: 'Problema NET Virtua e o SSH [Resolvido]'
date: 2015-01-31T15:22:49+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1353
permalink: /2015/01/31/problema-net-virtua-e-o-ssh-resolvido/
headerImage: false
star: false
category: blog
categories:
  - Linux
  - TIC
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
---
Este é um problema que estava se tornando recorrente desde que troquei da GVT para o NET Virtua (Net Combo). Conectava a meus servidores linux com SSH (no meu caso usando o PuTTY) e alguns minutos depois, perdia a conexão (quando deixava de usar a tela, por exemplo, fazendo algum backup ou transferência entre servidores).

Então como tive recentemente problemas ao sincronizar um git que fiz entre servidores, resolvi verificar se alguem mais teve este problema, e achei! Neste post "<a title="Problema NET Virtua tranca SSH" href="http://www.delete.com.br/problema-net-virtua-tranca-ssh/" target="_blank">Problema NET Virtua tranca SSH</a>" ele explica que o problema está na NET que derruba conexões que ficam "ociosas" (Idle) e temos que enviar um "pacote de vida" (Keep Alive). Ele explica em Linux, mas veremos no mundo Windows como fazer:

  * Coloque o seu host de acesso ou dê load em um salvo
  * Vá em "connection" e lá veja a opção "Seconds between keepalives (0 to turn off)" e coloque 60
  * Clique em "Open"
  * Pronto! 🙂

[<img class=" size-full wp-image-1354 aligncenter" src="wp-content/upload/2015/01/putty.png" alt="putty" width="456" height="439" srcset="https://luizsouza.com.br/wp-content/uploads/2015/01/putty.png 456w, https://luizsouza.com.br/wp-content/uploads/2015/01/putty-300x289.png 300w" sizes="(max-width: 456px) 100vw, 456px" />](wp-content/upload/2015/01/putty.png)

&nbsp;

&nbsp;