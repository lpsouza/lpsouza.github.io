---
notion_id: 85bf044d-5808-490e-b0ad-c853d77a3ba3
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2014-03-29T14:21:00.000Z
last_modified_at: 2022-05-19T22:04:00.000Z
category: Tech
published: true
title: Como remover o Unity do Ubuntu sem stress
tags:
  - Desktop
  - Informática
  - Interface Gráfica
  - linux
  - ubuntu
  - Unity
  - Window Maker
image: null
---

Estava instalando um Ubuntu 13.10 em uma VM e como não queria o Unity como interface gráfica, resolvi procurar uma forma de remover e instalar a interface que eu mais gosto, isto é, a Window Maker!

![Windowmaker virtual no Hyper-V](/wp-content/uploads/2014/03/windowmaker.png)

Agora, remover o Unity pode ser uma tarefa complicada, uma vez que a Canonical coloca praticamente tudo do seu sistema operacional nesta interface, o que por um lado dá uma "unidade" (sacaram o trocadilho), dando mais estabilidade. Mas por outro lado trás problemas para usuários mais antigos que preferem outras interfaces.

Visando essa questão, eu procurei algo pela internet que pudesse me ajudar a remover completamente o Unity. Eis que encontro o post do Dionatan Simioni com o título [Como remover o Unity completamente do Ubuntu 12.04 sem quebrar o sistema](http://www.diolinux.com.br/2013/04/omo-remover-o-unity-completamente-do-ubuntu-sem-quebrar-o-sistema.html "Como remover o Unity completamente do Ubuntu 12.04 sem quebrar o sistema").

Ok, chega de explicação e me dê esse comando maravilhoso, diria o pessoal que não curtiu o Unity. E aqui vai:

`sudo apt-get remove unity unity-2d unity-2d-common unity-2d-panel unity-2d-shell unity-2d-spread unity-asset-pool unity-common unity-lens-applications unity-lens-files unity-lens-music unity-lens-video unity-scope-musicstores unity-scope-video-remote unity-services indicator-messages indicator-status-provider-mc5 appmenu-qt appmenu-gtk appmenu-gtk3 lightdm unity-greeter overlay-scrollbar zeitgeist zeitgeist-core zeitgeist-datahub activity-log-manager-common activity-log-manager-control-center`

Depois que fizer isso, não terá mais interface gráfica instalada, para remover as dependências rode ainda:

```sh

sudo apt-get autoremove

sudo apt-get purge `deborphan`

sudo dpkg --purge `dpkg -l | egrep "^rc" | cut -d' ' -f3`

```

E agora, instale sua inteface preferida! 🙂

Se quiser instalar a maravilhosa e leve Windowmaker: `sudo apt-get install wmaker` 😉

