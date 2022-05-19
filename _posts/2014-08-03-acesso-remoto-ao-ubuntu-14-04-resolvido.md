---
notion_id: 46da32f3-3da7-4373-9c7e-e51400013091
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2014-08-03T20:35:00.000Z
last_modified_at: 2022-05-19T22:04:00.000Z
category: Tech
published: true
title: Acesso remoto ao Ubuntu 14.04 [Resolvido]
tags:
  - Acesso Remoto
  - Fica a dica
  - linux
  - Remote Desktop
  - Sharing
  - ubuntu
  - vino
  - VNC
  - VNC Viewer
image: https://luizsouza.com/wp-content/uploads/2014/08/Screenshot-from-2014-05-26-103053.png
---

Mais um da coleção resolvidos! Hehehe...

Desta vez é a vez de um pequeno bug que anda ocorrendo no Ubuntu Desktop 14.04, quando usamos a função de Compartilhamento de Área de Trabalho, e tentamos o acesso ao computador e nos deparamos com a mensagem: _"No supported authentication methods!"_

Para corrigir este problema encontrei um artigo um tando confuso "Remote desktop Sharing in Ubuntu 14.04" no site Ubuntu Discourse e resolvi colocar o resumo da ópera aqui.

Alguma configuração de criptografia usada no Compartilhamento de Área de Trabalho não está batendo com o VNC Viewer (usado para acessar), e por isso o problema.

Para resolver, precisamos desativar a criptografia, e então, no terminal, usamos o comando:

`gsettings set org.gnome.Vino require-encryption false`

Após isso, reinicie o seu computador e o acesso deve estar funcionando normalmente!

