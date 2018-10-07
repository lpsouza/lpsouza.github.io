---
id: 1042
title: 'Netbeans IDE no Ubuntu 12.04, problemas visuais [resolvido]'
date: 2012-06-16T01:38:13+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=1042
permalink: /2012/06/16/netbeans-ide-no-ubuntu-12-04-problemas-visuais-resolvido/
headerImage: false
star: false
category: blog
categories:
  - Linux
  - Programação
  - TIC
tags:
  - Informática
  - Java
  - Linux
  - Lunux
  - NetBeans
  - Programação
  - Ubuntu
---
Desde que atualizei o meu Ubuntu para o 12.04, eu tive um problema no meu NetBeans no qual pensei que teria que conviver com ele: A interface dele ficava horrivel de visualizar qundo aberto.<figure id="attachment_1045" style="width: 300px" class="wp-caption aligncenter">

[<img class="size-medium wp-image-1045 " src="http://ihcenter.com.br/luizsouza/files/2012/06/Captura-de-tela-de-2012-06-16-011910-300x169.png" alt="" width="300" height="169" srcset="https://luizsouza.com.br/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-011910-300x169.png 300w, https://luizsouza.com.br/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-011910-768x434.png 768w, https://luizsouza.com.br/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-011910-1024x578.png 1024w, https://luizsouza.com.br/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-011910-1200x678.png 1200w, https://luizsouza.com.br/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-011910.png 1317w" sizes="(max-width: 300px) 100vw, 300px" />](http://ihcenter.com.br/luizsouza/files/2012/06/Captura-de-tela-de-2012-06-16-011910.png)<figcaption class="wp-caption-text">Como fica o NetBeans no Ubuntu 12.04</figcaption></figure> 

Pra mim o principal problema visual é os menus, tu simplesmente não consegue ler eles nesta versão. Então em minhas buscas na internet, achei um artigo, o [Netbeans IDE Look & Feel under Ubuntu 12.04 « Hanynowsky](http://hanynowsky.wordpress.com/2012/04/27/netbeans-ide-look-feel-under-ubuntu-12-04/), onde tem uma dica bem fácil para desabilitar o tema padrão e voltar a usar o tema do padrão do Java.

Para isso editem o arquivo _netbeans.conf_ no diretório padrão do Netbeans. O meu estava em _/usr/local/netbeans-7.1.2/etc/netbeans.conf_.

Ali, encontre a linha que começa com `netbeans_default_options=` e adicione no final dela (antes de fechar as aspas) isto: `-J-Dswing.aatext=true -J-Dawt.useSystemAAFontSettings=lcd --laf Metal`.

Feche e abra novamente o NetBeans e a interface deve ficar mais ou menos assim:<figure id="attachment_1047" style="width: 300px" class="wp-caption aligncenter">

[<img class="size-medium wp-image-1047" src="http://ihcenter.com.br/luizsouza/files/2012/06/Captura-de-tela-de-2012-06-16-013347-300x169.png" alt="Como fica o Netbeans depois da alteração" width="300" height="169" srcset="https://luizsouza.com.br/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-013347-300x169.png 300w, https://luizsouza.com.br/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-013347-768x434.png 768w, https://luizsouza.com.br/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-013347-1024x578.png 1024w, https://luizsouza.com.br/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-013347-1200x678.png 1200w, https://luizsouza.com.br/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-013347.png 1317w" sizes="(max-width: 300px) 100vw, 300px" />](http://ihcenter.com.br/luizsouza/files/2012/06/Captura-de-tela-de-2012-06-16-013347.png)<figcaption class="wp-caption-text">Como fica o Netbeans depois da alteração</figcaption></figure> 

Pronto!