---
id: 1513
title: 'Erro no desligar do Unity quando usando o Cairo Dock [Resolvido]'
date: 2016-06-19T01:39:54+00:00
author: lpsouza
layout: post
guid: https://luizsouza.com.br/?p=1513
permalink: /2016/06/19/erro-no-desligar-do-unity-quando-usando-o-cairo-dock-resolvido/
image: /wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450-1200x675.png
headerImage: false
star: false
category: blog
categories:
  - Linux
  - TIC
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
---
Faz uns meses que resolvi dar uma cara de &#8220;Mac OS&#8221; para o meu Ubuntu. Como chamei, o meu [Mac OSX Pobre Edition](https://www.instagram.com/p/BFZ-GcKMGDo/), hehehe. Para fazer isso eu instalei o Cairo Dock no meu Ubuntu 14.04, com a interface padrão do Unity. Ok, até que ficou legal! Olha esse screenshot:<figure id="attachment_1514" style="width: 300px" class="wp-caption aligncenter">

[<img class="wp-image-1514 size-medium" src="https://luizsouza.com.br/wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450-300x169.png" alt="Imagem do Ubuntu usando interface gráfica do Unity com o Cairo Dock" width="300" height="169" srcset="https://luizsouza.com.br/wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450-300x169.png 300w, https://luizsouza.com.br/wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450-768x432.png 768w, https://luizsouza.com.br/wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450-1024x576.png 1024w, https://luizsouza.com.br/wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450-1200x675.png 1200w, https://luizsouza.com.br/wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450.png 1366w" sizes="(max-width: 300px) 100vw, 300px" />](https://luizsouza.com.br/wp-content/uploads/2016/06/Captura-de-tela-de-2016-06-19-012450.png)<figcaption class="wp-caption-text">Fala sério, tu nem reparou que era um Linux né?</figcaption></figure> 

Mas desde que fiz essa solução, tive um outro problema: Ir no desligar do Unity não fazia mais o meu note desligar, e sim voltar para o login! 🙁

Fiquei nesse problema até hoje, quando fazendo uma pesquisa rápida no Google, achei o mesmo problema no Askubuntu: _[Can&#8217;t shutdown and logout from top panel in Ubuntu 14.04 LTS](http://askubuntu.com/questions/451070/cant-shutdown-and-logout-from-top-panel-in-ubuntu-14-04-lts)_, que comenta exatamente o que eu estava passando. E a solução foi bem simples, editar o atalho da aplicação e adicionar um parâmetro que atrasa a inicialização do Cairo Dock. Então mão na massa! Abrindo o terminal, digite:

`nano ~/.config/autostart/cairo-dock.desktop`

Uma vez dentro do arquivo, vá ao final dele e adicione:

`X-GNOME-Autostart-Delay=20`

Salve o arquivo e reinicie o Unity. Resolvido! 😀