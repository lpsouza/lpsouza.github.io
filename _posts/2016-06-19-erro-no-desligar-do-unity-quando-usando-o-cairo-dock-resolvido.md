---
notion_id: f58c5670-b522-4866-b7ff-d8b10389729f
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2016-06-19T01:39:00.000Z
last_modified_at: 2022-05-19T22:04:00.000Z
category: Tech
published: true
title: Erro no desligar do Unity quando usando o Cairo Dock [Resolvido]
tags:
  - Cairo
  - Cairo Dock
  - Computadores
  - Desligar
  - Dock
  - Fica a dica
  - linux
  - Shutdown
  - ubuntu
  - Unity
image: https://luizsouza.com/wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450-1200x675.png
---

Faz uns meses que resolvi dar uma cara de "Mac OS" para o meu Ubuntu. Como chamei, o meu [Mac OSX Pobre Edition](https://www.instagram.com/p/BFZ-GcKMGDo/), hehehe. Para fazer isso eu instalei o Cairo Dock no meu Ubuntu 14.04, com a interface padrão do Unity. Ok, até que ficou legal! Olha esse screenshot:

![Fala sério, tu nem reparou que era um Linux né?](/wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450.png)

Mas desde que fiz essa solução, tive um outro problema: Ir no desligar do Unity não fazia mais o meu note desligar, e sim voltar para o login! 🙁

Fiquei nesse problema até hoje, quando fazendo uma pesquisa rápida no Google, achei o mesmo problema no Askubuntu: _[Can't shutdown and logout from top panel in Ubuntu 14.04 LTS](http://askubuntu.com/questions/451070/cant-shutdown-and-logout-from-top-panel-in-ubuntu-14-04-lts)_, que comenta exatamente o que eu estava passando. E a solução foi bem simples, editar o atalho da aplicação e adicionar um parâmetro que atrasa a inicialização do Cairo Dock. Então mão na massa! Abrindo o terminal, digite:

`nano ~/.config/autostart/cairo-dock.desktop`

Uma vez dentro do arquivo, vá ao final dele e adicione:

`X-GNOME-Autostart-Delay=20`

Salve o arquivo e reinicie o Unity. Resolvido! 😀

