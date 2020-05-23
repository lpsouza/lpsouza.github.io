---
id: 754
title: 'Troca de serial no Windows 7 [Resolvido]'
date: 2011-07-19T09:30:00+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/blog/2011/07/19/troca-de-serial-no-windows-7-resolvido/
permalink: /2011/07/19/troca-de-serial-no-windows-7-resolvido/
aktt_notify_twitter:
  - 'yes'
  - 'yes'
aktt_tweeted:
  - "1"
  - "1"
star: false
category: blog
categories:
  - TIC
tags:
  - Ativação
  - CD-Key
  - Computadores
  - Dell
  - Fica a dica
  - Microsoft
  - Resolvido
  - Serial
  - Windows 7
---
Estava eu, junto com meus colegas de trabalho, pensando em resolver um problema que criamos com a clonagem de um laboratório inteiro de informática. O serial clonou junto!

Então pesquisando pela internet achei essa solução muito boa e simples, usando o velho e bom prompt de comando: “Como trocar a CD-Key do Windows Vista e Windows 7 com o slmgr”

Ok, mas o que esse tal de slmgr tem de tão especial? Simples, no colégio que trabalho, criamos uma tabela de seriais, depois quando precisamos formatar uma maquina ou padronizar uma instalação de aplicativo, bastamos mudar a imagem dos windows 7, clonar todas a maquinas e usar os seguintes comandos:

Para remover a chave e ativação da imagem.
`slmgr -upk`  

Para instalar a chave original do computador que clonamos.
`slmgr -ipk chave-original-do-computador`

Para re-ativar a chave, e por fim,
`slmgr -ato`  

Apenas para ver se tudo está nos conformes
`slgmr -xpr`

Agora use a imaginação, pode criar um batch para cada serial de computador com estes comandos, pode rodar manualmente, validação de alguma forma… Como preferir!

Assim mantemos uma rede legalizada e organizada!
