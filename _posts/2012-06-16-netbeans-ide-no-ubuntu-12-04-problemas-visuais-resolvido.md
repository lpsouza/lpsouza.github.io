---
author: lpsouza
category: Tech
date: 2012-06-16 01:38:13
layout: post
published: true
tags:
- Informática
- Java
- Linux
- Lunux
- NetBeans
- Programação
- Ubuntu
title: Netbeans IDE no Ubuntu 12.04, problemas visuais [resolvido]
---

Desde que atualizei o meu Ubuntu para o 12.04, eu tive um problema no meu NetBeans no qual pensei que teria que conviver com ele: A interface dele ficava horrível de visualizar quando aberto.

![Como fica o NetBeans no Ubuntu 12.04](https://luizsouza.com.br/wp-content/upload/2012/06/Captura-de-tela-de-2012-06-16-011910.png)

Pra mim o principal problema visual é os menus, tu simplesmente não consegue ler eles nesta versão. Então em minhas buscas na internet, achei um artigo, o [Netbeans IDE Look & Feel under Ubuntu 12.04 « Hanynowsky](http://hanynowsky.wordpress.com/2012/04/27/netbeans-ide-look-feel-under-ubuntu-12-04/), onde tem uma dica bem fácil para desabilitar o tema padrão e voltar a usar o tema do padrão do Java.

Para isso editem o arquivo _netbeans.conf_ no diretório padrão do Netbeans. O meu estava em _/usr/local/netbeans-7.1.2/etc/netbeans.conf_.

Ali, encontre a linha que começa com `netbeans_default_options=` e adicione no final dela (antes de fechar as aspas) isto: `-J-Dswing.aatext=true -J-Dawt.useSystemAAFontSettings=lcd --laf Metal`.

Feche e abra novamente o NetBeans e a interface deve ficar mais ou menos assim:

![Como fica o Netbeans depois da alteração](https://luizsouza.com.br/wp-content/upload/2012/06/Captura-de-tela-de-2012-06-16-013347.png)

Pronto!