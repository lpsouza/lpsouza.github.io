---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2014-08-03 17:35:00-03:00
image: /assets/2014-08-03-acesso-remoto-ao-ubuntu-14-04-resolvido/Screenshot-from-2014-05-26-103053.png
last_modified_at: 2023-10-15 01:01:20.294445-03:00
layout: post
published: true
tags:
- acesso-remoto
- fica-a-dica
- linux
- remote-desktop
- sharing
- ubuntu
- vino
- vnc
- vnc-viewer
title: Acesso remoto ao Ubuntu 14.04 [Resolvido]
---

Mais um da coleção resolvidos! Hehehe...

Desta vez é a vez de um pequeno bug que anda ocorrendo no Ubuntu Desktop 14.04, quando usamos a função de Compartilhamento de Área de Trabalho, e tentamos o acesso ao computador e nos deparamos com a mensagem: _"No supported authentication methods!"_

Para corrigir este problema encontrei um artigo um tando confuso "Remote desktop Sharing in Ubuntu 14.04" no site Ubuntu Discourse e resolvi colocar o resumo da ópera aqui.

Alguma configuração de criptografia usada no Compartilhamento de Área de Trabalho não está batendo com o VNC Viewer (usado para acessar), e por isso o problema.

Para resolver, precisamos desativar a criptografia, e então, no terminal, usamos o comando:

`gsettings set org.gnome.Vino require-encryption false`

Após isso, reinicie o seu computador e o acesso deve estar funcionando normalmente!
