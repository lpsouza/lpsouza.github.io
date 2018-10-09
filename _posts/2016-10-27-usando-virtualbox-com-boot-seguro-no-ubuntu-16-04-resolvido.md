---
id: 1592
title: 'Usando Virtualbox com boot seguro no Ubuntu 16.04 [Resolvido]'
date: 2016-10-27T00:14:23+00:00
author: lpsouza
layout: post
guid: https://luizsouza.com.br/?p=1592
permalink: /2016/10/27/usando-virtualbox-com-boot-seguro-no-ubuntu-16-04-resolvido/
headerImage: false
star: false
category: blog
categories:
  - Linux
  - TIC
tags:
  - Computadores
  - Fica a dica
  - Kernel
  - Linux
  - Maquina Virtual
  - Ubuntu
  - Vagrant
  - VirtualBox
  - VM
---
Recentemente instalei no meu computador a última versão LTS do Ubuntu, a 16.04. E quando fui usar o combo <a href="https://www.vagrantup.com/" target="_blank"><strong>Vagrant</strong></a> e <a href="https://www.virtualbox.org/" target="_blank"><strong>Virtualbox</strong></a>, me deparei com um problema ocasionado por alguma mudança na assinatura dos aplicativos para uso de computadores com _Secure Boot** **_(Inicialização Segura), como é o caso do meu notebook.

Ok, lá vamos nós para a internet e o que mais lia por aí era: Desabilite o _Secure Boot_. Sinceramente, eu achei essa solução muito "gambiarra" mesmo, logo, não foi o que resolvi seguir. Então, o que vi em um desses links que apareceram no Google, foi um post no blog do <a href="https://flavioprimo.xyz/" target="_blank">Flávio Prino</a> que explica como **assinar digitalmente o arquivo de driver** do virtualbox, e assim permitindo que possamos acessar as máquinas do Virtualbox sem erros e com o _Secure Boot_ ativado! 😀

## Receita do bolo

<del>O post tem um passo a passo de 5 etapas, bem simples: https://flavioprimo.xyz/linux/how-to-install-virtualbox-on-ubuntu-having-uefi-secure-boot-enabled/</del>

Siga os 5 passos abaixo:

  1. Abra o terminal e instale o virtualbox com `apt-get install virtualbox` (ignore os avisos e pedidos para desativar o boot seguro do UEFI)
  2. Crie um “par de chaves X.509”:
  
    `openssl req -new -x509 -newkey rsa:2048 -keyout vboxdrv.priv -outform DER -out vboxdrv.der -nodes -days 36500 -subj "/CN=MySelf/"`
  3. Assine o módulo do virtualbox:
  
    `sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./vboxdrv.priv ./vboxdrv.der $(modinfo -n vboxdrv)`
  4. Importe a chave pública gerada com: sudo mokutil -import vboxdrv.der
  5. Reinicie e siga as telas que aparecerem durente o boot do UEFI para registrar a nova chave. Este procedimento é permanente, então deve ser feito somente uma vez.

## Dica adicional

Como o kernel pode ser atualizado constantemente (principalmente na versão desktop), eu recomento criar o seguinte script:

<pre><code class="bash">#!/bin/bash

CERTDIR="/path/to/certs"

/usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 $CERTDIR/vboxdrv.priv $CERTDIR/vboxdrv.der $(modinfo -n vboxdrv)

/sbin/modprobe vboxdrv
</code></pre>

Salve com um nome como **update-vboxdrv.sh** e use sempre que sua versão de kernel for atualizada! 😉