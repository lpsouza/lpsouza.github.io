---
id: 1645
title: 'Problema ao apagar switch virtual no Hyper-V [Resolvido]'
date: 2017-12-13T23:52:00+00:00
author: lpsouza
layout: post
guid: https://luizsouza.com.br/?p=1645
permalink: /2017/12/13/problema-ao-apagar-switch-virtual-no-hyper-v-resolvido/
image: /wp-content/uploads/2017/12/erro-deletando-vmswitch.png
headerImage: false
star: false
category: blog
categories:
  - TIC
  - Windows
tags:
  - Comutador
  - Comutador Virtual
  - Fall Creators Update
  - Fica a dica
  - Hyper-V
  - Hypervisor
  - Microsoft
  - NAT
  - PowerShell
  - Rede
  - Switch
  - vSwitch
  - Windows
  - Windows 10
---
Após instalada a versão 1709 do Windows 10, também conhecida como _Fall Creators Update_, comecei a ter problemas com os switchs virtuais do Hyper-V. Bom, como não costumo ser um usuário &#8220;padrão&#8221;, eu havia um diferêncial: Alem do Hyper-V, já estava instalado antes da atualização, havia também o Docker instalado em sua versão 17.09. Então o que antes havia apenas o switch &#8220;DockerNAT&#8221;, agora surgiu mais dois! Um tal de &#8220;Opção Padrão&#8221; e um &#8220;nat&#8221; e logo pensei: Ué? Quem mandou ter mais de um vSwitch aqui (Sim, tenho uns ticks)? Eis que me deparei com uma surpresa &#8220;agradavel&#8221;.

<img class="aligncenter wp-image-1648 size-full" src="https://luizsouza.com.br/wp-content/uploads/2017/12/aviso-opcao-padrao.png" alt="" width="408" height="58" srcset="https://luizsouza.com.br/wp-content/uploads/2017/12/aviso-opcao-padrao.png 408w, https://luizsouza.com.br/wp-content/uploads/2017/12/aviso-opcao-padrao-300x43.png 300w" sizes="(max-width: 408px) 100vw, 408px" />

Ok, um deles não posso apagar por isso, mas e este &#8220;nat&#8221;?!?? Vou deletar&#8230; Eis que aparece a mensagem de acesso negado e nada de remover! E é um switch virtual do tipo &#8220;rede privada&#8221; que não consigo remover!?!! Enfim, depois de pesquisar na internet, descobri que esta placa é um &#8220;lixo&#8221; que ficou provavelmente pela mistura de Docker com essa atualização do Windows 10! Bom, parece que não é só uma exclusividade da atualização, porque encontrei a resposta em um post do SuperUser de Março deste ano chamado _<a href="https://superuser.com/a/1192507" target="_blank" rel="noopener">How to remove a Hyper-V virtual Ethernet</a>_.

A solução consiste em remover o switch virtual &#8220;na marra&#8221; do registro, uma vez que ele realmente é um lixo apenas. Se quiserem podem usar o famoso _regedit_ para resolver a questão, mas como eu adoro uma tela de console, vou mostrar como resolver isso não mão mesmo, via PowerShell! Para isso abra então a console do PowerShell e digite os seguintes comandos:

`Set-Location HKLM:\SYSTEM\CurrentControlSet\Services\VMSMP\Parameters\SwitchList<br />
Get-ChildItem`

Aqui você verá algo como esta tela aqui:

<img class="aligncenter wp-image-1649 size-full" src="https://luizsouza.com.br/wp-content/uploads/2017/12/powershell1.png" alt="" width="764" height="293" srcset="https://luizsouza.com.br/wp-content/uploads/2017/12/powershell1.png 764w, https://luizsouza.com.br/wp-content/uploads/2017/12/powershell1-300x115.png 300w" sizes="(max-width: 764px) 100vw, 764px" />

Identifique qual o nome da chave que se encontra o &#8220;lixo&#8221;, isto é o nome &#8220;nat&#8221;. No meu caso foi este: E42053F4-A8F7-4062-97DF-F7EAB1156438. Então agora é só deletar a chave!

`Remove-Item .\E42053F4-A8F7-4062-97DF-F7EAB1156438\`

Escolha a opção [S] e resolvido! Não existe mais este switch virtual!

BONUS: Se por um acaso acontecer como aconteceu comigo, de continuar o switch virtual aparecendo no Hyper-V, olhe seus dispositivos de rede se não há um adaptador de rede do Hyper-V dando erro. Se sim, basta remover ele!