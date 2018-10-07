---
id: 51
title: baby_rocker.sh
date: 2009-08-25T10:11:40+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=51
permalink: /2009/08/25/baby_rocker-sh/
headerImage: false
star: false
category: blog
categories:
  - Programação
  - TIC
tags:
  - Bebê
  - Fica a dica
  - Hardware
  - Linux
  - PC
  - Shellscript
  - Software
  - Tarefas
---
Bom pessoal, não resisti.. Foi obrigado a colocar esse script animal aqui no meu blog e compartilhar com o mundo! 

Não fui eu que inventei, apenas to repassando um opensource e incluindo minhas melhorias e comentarios. 

Antes de mais nada, ingredientes de hardware e software: 

</p> 

  1. Linux (o sabor que acha mais gostoso) 


  2. PC compativel com linux 


  3. Unidade de CD/DVD 


  4. Barbante 


  5. Berço 


  6. Bebê(?) 
</ol> 

Como fazer: 

Insira em seu Linux o codigo a seguir: 

#!/bin/sh 

\# pra quem não entendeu, é um laço (loop) infinito    
while [ 1 = 1 ]    
do    
\# abre o cdrom    
eject    
\# fecha o cdrom    
eject -t    
\# porque seria divertido uma mensagem    
clear    
echo &#8220;Executando baby_rocker.. Ctrl+C para parar..&#8221;    
done 

Agora ligue todo o &#8220;hardware&#8221; conforme o   <a href="http://www.youtube.com/watch?v=bYcF_xX2DE8" target="_blank">video </a> . 

E não é que funciona? Agradeço ao   <a href="http://twitter.com/joaopedroermel" target="_blank">@joaopedroermel </a> pelo video! 

Publicado pelo   [Wordmobi](http://wordmobi.googlecode.com)