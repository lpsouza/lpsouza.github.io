---
id: 1316
title: 'Acesso remoto ao Ubuntu 14.04 [Resolvido]'
date: 2014-08-03T20:35:45+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1316
permalink: /2014/08/03/acesso-remoto-ao-ubuntu-14-04-resolvido/
image: /wp-content/uploads/2014/08/Screenshot-from-2014-05-26-103053.png
headerImage: false
star: false
category: blog
categories:
  - Linux
  - TIC
tags:
  - Acesso Remoto
  - Fica a dica
  - Linux
  - Remote Desktop
  - Sharing
  - Ubuntu
  - vino
  - VNC
  - VNC Viewer
---
Mais um da coleção resolvidos! Hehehe...

Desta vez é a vez de um pequeno bug que anda ocorrendo no Ubuntu Desktop 14.04, quando usamos a função de Compartilhamento de Área de Trabalho, e tentamos o acesso ao computador e nos deparamos com a mensagem: _"<span style="color: #222222;">No supported authentication methods!</span>"_

Para corrigir este problema encontrei um artigo um tando confuso "Remote desktop Sharing in Ubuntu 14.04" no site Ubuntu Discourse e resolvi colocar o resumo da ópera aqui.

Alguma configuração de criptografia usada no Compartilhamento de Área de Trabalho não está batendo com o VNC Viewer (usado para acessar), e por isso o problema.

Para resolver, precisamos desativar a criptografia, e então, no terminal, usamos o comando:

`gsettings set org.gnome.Vino require-encryption false`

Após isso, reinicie o seu computador e o acesso deve estar funcionando normalmente!

Fonte: <a title="Remote desktop Sharing in Ubuntu 14.04" href="http://discourse.ubuntu.com/t/remote-desktop-sharing-in-ubuntu-14-04/1640" target="_blank">http://discourse.ubuntu.com/t/remote-desktop-sharing-in-ubuntu-14-04/1640</a>