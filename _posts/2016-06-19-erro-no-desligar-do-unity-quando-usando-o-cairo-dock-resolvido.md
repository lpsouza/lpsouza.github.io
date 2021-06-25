---
author: lpsouza
category: Tech
date: 2016-06-19 01:39:54
image: /wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450-1200x675.png
layout: post
published: true
tags:
- Cairo
- Cairo Dock
- Computadores
- Desligar
- Dock
- Fica a dica
- Linux
- Shutdown
- Ubuntu
- Unity
title: Erro no desligar do Unity quando usando o Cairo Dock [Resolvido]
---

Faz uns meses que resolvi dar uma cara de "Mac OS" para o meu Ubuntu. Como chamei, o meu [Mac OSX Pobre Edition](https://www.instagram.com/p/BFZ-GcKMGDo/), hehehe. Para fazer isso eu instalei o Cairo Dock no meu Ubuntu 14.04, com a interface padrão do Unity. Ok, até que ficou legal! Olha esse screenshot:

![Fala sério, tu nem reparou que era um Linux né?](/wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450.png)

Mas desde que fiz essa solução, tive um outro problema: Ir no desligar do Unity não fazia mais o meu note desligar, e sim voltar para o login! 🙁

Fiquei nesse problema até hoje, quando fazendo uma pesquisa rápida no Google, achei o mesmo problema no Askubuntu: _[Can't shutdown and logout from top panel in Ubuntu 14.04 LTS](http://askubuntu.com/questions/451070/cant-shutdown-and-logout-from-top-panel-in-ubuntu-14-04-lts)_, que comenta exatamente o que eu estava passando. E a solução foi bem simples, editar o atalho da aplicação e adicionar um parâmetro que atrasa a inicialização do Cairo Dock. Então mão na massa! Abrindo o terminal, digite:

`nano ~/.config/autostart/cairo-dock.desktop`

Uma vez dentro do arquivo, vá ao final dele e adicione:

`X-GNOME-Autostart-Delay=20`

Salve o arquivo e reinicie o Unity. Resolvido! 😀
