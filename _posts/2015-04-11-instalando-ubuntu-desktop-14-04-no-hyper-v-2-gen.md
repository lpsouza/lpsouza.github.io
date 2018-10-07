---
id: 1412
title: Instalando Ubuntu Desktop 14.04 no Hyper-V (2-gen)
date: 2015-04-11T15:49:54+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1412
permalink: /2015/04/11/instalando-ubuntu-desktop-14-04-no-hyper-v-2-gen/
headerImage: false
star: false
category: blog
categories:
  - Linux
  - TIC
tags:
  - Computadores
  - Fica a dica
  - Hyper-V
  - Linux
  - Performance
  - Ubuntu
  - Ubuntu 14.04
  - VirtualBox
  - Windows
  - Windows 8.1
---
Depois de reinstalar o meu [Windows 8.1 Pro](http://windows.microsoft.com/pt-br/windows/home), e reinstalar o [Hyper-V](http://www.microsoft.com/pt-br/server-cloud/solutions/virtualization.aspx) nele, me perguntei se precisaria instalar o [Virtualbox](https://www.virtualbox.org/) para fazer uma estação de trabalho [Ubuntu](http://www.ubuntu.com/). Depois de dar uma verificada na internet, achei dois artigos super interessantes que me ajudou a instalar em modo &#8220;Geração 2&#8221; das Maquinas Virtuais no Hyper-V. Os artigos foram: [Ubuntu 14.04 in a Generation 2 VM](http://blogs.msdn.com/b/virtual_pc_guy/archive/2014/06/09/ubuntu-14-04-in-a-generation-2-vm.aspx) e [Changing Ubuntu Screen Resolution in a Hyper-V VM](http://blogs.msdn.com/b/virtual_pc_guy/archive/2014/09/19/changing-ubuntu-screen-resolution-in-a-hyper-v-vm.aspx).

Então o que fiz para instalar?

  1. Criei uma placa de rede **interna**, pois como uso meu note e ele usa uma placa de rede sem fio, é antigo o problema do Hyper-V com placas de rede **externa**, e compartilhei a internet da placa de rede sem fio.
  2. Configurei também o uso de mais de 1 processador para agilizar a performance.
  3. Criei uma VM de 2ª geração e **desativei da firmware o _boot seguro_ e coloquei a ISO do Ubuntu para instalar**.
  4. Depois de instalado, editei o arquivo **/etc/default/grub** e na linha que diz _GRUB\_CMDLINE\_LINUX_DEFAULT_, adicionei **video=hyperv_fb:1366&#215;768**.
  5. Coloquei a VM do ubuntu em tela cheia.

Depois disso fiz uns testes, mas senti levemente lento, comparado ao uso no Virtualbox. Mas para um uso básico, não vejo problemas no uso! Aprovado! 😀