---
author: lpsouza
category: Tech
date: 2017-12-13 23:52:00
image: https://luizsouza.com.br/wp-content/uploads/2017/12/erro-deletando-vmswitch.png
layout: post
published: true
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
title: Problema ao apagar switch virtual no Hyper-V [Resolvido]
---

Após instalada a versão 1709 do Windows 10, também conhecida como _Fall Creators Update_, comecei a ter problemas com os switchs virtuais do Hyper-V. Bom, como não costumo ser um usuário "padrão", eu havia um diferêncial: Alem do Hyper-V, já estava instalado antes da atualização, havia também o Docker instalado em sua versão 17.09. Então o que antes havia apenas o switch "DockerNAT", agora surgiu mais dois! Um tal de "Opção Padrão" e um "nat" e logo pensei: Ué? Quem mandou ter mais de um vSwitch aqui (Sim, tenho uns ticks)? Eis que me deparei com uma surpresa "agradável".

![Surprise](https://luizsouza.com.br/wp-content/uploads/2017/12/aviso-opcao-padrao.png)

Ok, um deles não posso apagar por isso, mas e este "nat"?!?? Vou deletar... Eis que aparece a mensagem de acesso negado e nada de remover! E é um switch virtual do tipo "rede privada" que não consigo remover!?!! Enfim, depois de pesquisar na internet, descobri que esta placa é um "lixo" que ficou provavelmente pela mistura de Docker com essa atualização do Windows 10! Bom, parece que não é só uma exclusividade da atualização, porque encontrei a resposta em um post do SuperUser de Março deste ano chamado _[How to remove a Hyper-V virtual Ethernet](https://superuser.com/a/1192507)_.

A solução consiste em remover o switch virtual "na marra" do registro, uma vez que ele realmente é um lixo apenas. Se quiserem podem usar o famoso _regedit_ para resolver a questão, mas como eu adoro uma tela de console, vou mostrar como resolver isso não mão mesmo, via PowerShell! Para isso abra então a console do PowerShell e digite os seguintes comandos:

```powershell
Set-Location HKLM:\SYSTEM\CurrentControlSet\Services\VMSMP\Parameters\SwitchList
Get-ChildItem`
```

Aqui você verá algo como esta tela aqui:

![Powershell](https://luizsouza.com.br/wp-content/uploads/2017/12/powershell1.png)

Identifique qual o nome da chave que se encontra o "lixo", isto é o nome "nat". No meu caso foi este: E42053F4-A8F7-4062-97DF-F7EAB1156438. Então agora é só deletar a chave!

```powershell
Remove-Item .\E42053F4-A8F7-4062-97DF-F7EAB1156438\
```

Escolha a opção [S] e resolvido! Não existe mais este switch virtual!

BONUS: Se por um acaso acontecer como aconteceu comigo, de continuar o switch virtual aparecendo no Hyper-V, olhe seus dispositivos de rede se não há um adaptador de rede do Hyper-V dando erro. Se sim, basta remover ele!