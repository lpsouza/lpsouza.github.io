---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2018-04-22 06:30:00-03:00
image: https://luizsouza.com/wp-content/uploads/2018/04/Capturar.png
last_modified_at: 2023-10-15 01:01:20.307735-03:00
layout: post
published: true
tags:
- '1709'
- docker
- fall-creators-update
- hyper-v
- hypervisor
- nat
- networking
- vethernet
- windows
- windows-10
title: 'Docker no windows 10: Pra que tanta placa de rede no Hyper-V?'
---

Bom, aqui estou para novamente falar sobre Hyper-V e sua placas que surgem "magicamente"! Falei já aqui no meu blog sobre [Problema ao apagar switch virtual no Hyper-V](https://luizsouza.com/2017/12/13/problema-ao-apagar-switch-virtual-no-hyper-v-resolvido/) onde mostro todo o caminho que levei para remover uma placa de rede com o nome de _vEthernet (nat)_ alguns dias depois do post que comentei, reparei que a placa havia voltado a aparecer no meu Windows 10. Bom, como foi numa época conturbada de TCC e outros afazeres, eu deixei de tentar entender e apenas aceitei o fato que meu computador precisava de duas placas de redes virtuais para fazer NAT.

Mas como não sou de ficar parado quanto aos "porquês" da infra ou do desenvolvimento... Hoje, brincando com o meu Docker, resolvi ir a fundo e descobrir porque quando temos Docker e Hyper-V, ele sai configurando tanta placa de rede! Para começar, temos basicamente 3 placas de rede virtuais criadas quando falamos da dupla Docker e Hyper-V:

* **vEthernet (Opção Padrão)** ou **vEthernet (Default Switch)**: Placa de rede virtual criada pelo Hyper-V quando habilitado no [Windows 10 Fall Creators Update (versão 1709)](https://blogs.technet.microsoft.com/virtualization/2017/11/13/whats-new-in-hyper-v-for-windows-10-fall-creators-update/) que serve basicamente para facilitar o uso do NAT em VMs criadas no Hyper-V. Não pode ser apagada ou renomeada!

* **vEthernet (nat)**: Aí começa as confusões... Esta placa é criada pelo Docker, quando usamos na opção **Windows Containers**, para uso dos containers.

* **vEthernet (DockerNAT)**: Esta também é uma placa criada pelo Docker, mas agora quando usamos a opção **Linux Containers**, para uso dos containers.

Para finalizar, vale comentar que quando alternamos entre **Linux Containers** e **Windows Containers**, a placa de rede vEthernet (DockerNAT) pode ser criada ou deletada de forma dinâmica (junto com a VM Linux), enquanto a vEthernet (nat) uma vez criada, permaneces no computador e não adianta deletar! Enquanto usar Docker, ela sempre volta! 😛
