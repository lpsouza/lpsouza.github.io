---
id: 1305
title: Como remover o Unity do Ubuntu sem stress
date: 2014-03-29T14:21:55+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1305
permalink: /2014/03/29/como-remover-o-unity-do-ubuntu-sem-stress/
headerImage: false
star: false
category: blog
categories:
  - Linux
  - TIC
tags:
  - Desktop
  - Informática
  - Interface Grafica
  - Linux
  - Ubuntu
  - Unity
  - Window Maker
---
Estava instalando um Ubuntu 13.10 em uma VM e como não queria o Unity como interface gráfica, resolvi procurar uma forma de remover e instalar a interface que eu mais gosto, isto é, a Window Maker!<figure id="attachment_1306" style="width: 656px" class="wp-caption aligncenter">

<img class=" wp-image-1306 " title="Windowmaker" alt="Windowmaker" src="http://ihcenter.com.br/luizsouza/files/2014/03/windowmaker.png" width="656" height="519" srcset="https://luizsouza.com.br/wp-content/uploads/2014/03/windowmaker.png 656w, https://luizsouza.com.br/wp-content/uploads/2014/03/windowmaker-300x237.png 300w" sizes="(max-width: 656px) 100vw, 656px" /><figcaption class="wp-caption-text">Windowmaker virtual no Hyper-V</figcaption></figure> 

Agora, remover o Unity pode ser uma tarefa complicada, uma vez que a Canonical coloca praticamente tudo do seu sistema operacional nesta interface, o que por um lado dá uma &#8220;unidade&#8221; (sacaram o trocadilho), dando mais estabilidade. Mas por outro lado trás problemas para usuários mais antigos que preferem outras interfaces.

Visando essa questão, eu procurei algo pela internet que pudesse me ajudar a remover completamente o Unity. Eis que encontro o post do Dionatan Simioni com o título [Como remover o Unity completamente do Ubuntu 12.04 sem quebrar o sistema](http://www.diolinux.com.br/2013/04/omo-remover-o-unity-completamente-do-ubuntu-sem-quebrar-o-sistema.html "Como remover o Unity completamente do Ubuntu 12.04 sem quebrar o sistema").

Ok, chega de explicação e me dê esse comando maravilhoso, diria o pessoal que não curtiu o Unity. E aqui vai:

`sudo apt-get remove unity unity-2d unity-2d-common unity-2d-panel unity-2d-shell unity-2d-spread unity-asset-pool unity-common unity-lens-applications unity-lens-files unity-lens-music unity-lens-video unity-scope-musicstores unity-scope-video-remote unity-services indicator-messages indicator-status-provider-mc5 appmenu-qt appmenu-gtk appmenu-gtk3 lightdm unity-greeter overlay-scrollbar zeitgeist zeitgeist-core zeitgeist-datahub activity-log-manager-common activity-log-manager-control-center`

Depois que fizer isso, não terá mais interface gráfica instalada, para remover as dependências rode ainda:

`sudo apt-get autoremove`
  
`` sudo apt-get purge `deborphan` ``
  
`` sudo dpkg --purge `dpkg -l | egrep "^rc" | cut -d' ' -f3` ``

E agora, instale sua inteface preferida! 🙂

Se quiser instalar a maravilhosa e leve Windowmaker: `sudo apt-get install wmaker` 😉