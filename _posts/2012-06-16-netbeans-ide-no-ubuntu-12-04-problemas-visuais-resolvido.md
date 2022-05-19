---
notion_id: 44330f21-51af-4556-ba0c-e5e8fa0a713b
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2012-06-16T01:38:00.000Z
last_modified_at: 2022-05-19T22:03:00.000Z
category: Tech
published: true
title: Netbeans IDE no Ubuntu 12.04, problemas visuais [resolvido]
tags:
  - Informática
  - Java
  - linux
  - Lunux
  - NetBeans
  - Programação
  - ubuntu
image: null
---

Desde que atualizei o meu Ubuntu para o 12.04, eu tive um problema no meu NetBeans no qual pensei que teria que conviver com ele: A interface dele ficava horrível de visualizar quando aberto.

![Como fica o NetBeans no Ubuntu 12.04](/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-011910.png)

Pra mim o principal problema visual é os menus, tu simplesmente não consegue ler eles nesta versão. Então em minhas buscas na internet, achei um artigo, o [Netbeans IDE Look & Feel under Ubuntu 12.04 « Hanynowsky](http://hanynowsky.wordpress.com/2012/04/27/netbeans-ide-look-feel-under-ubuntu-12-04/), onde tem uma dica bem fácil para desabilitar o tema padrão e voltar a usar o tema do padrão do Java.

Para isso editem o arquivo _netbeans.conf_ no diretório padrão do Netbeans. O meu estava em _/usr/local/netbeans-7.1.2/etc/netbeans.conf_.

Ali, encontre a linha que começa com `netbeans_default_options=` e adicione no final dela (antes de fechar as aspas) isto: `-J-Dswing.aatext=true -J-Dawt.useSystemAAFontSettings=lcd --laf Metal`.

Feche e abra novamente o NetBeans e a interface deve ficar mais ou menos assim:

![Como fica o Netbeans depois da alteração](/wp-content/uploads/2012/06/Captura-de-tela-de-2012-06-16-013347.png)

Pronto!

