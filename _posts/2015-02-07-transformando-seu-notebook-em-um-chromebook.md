---
id: 1333
title: Transformando seu notebook em um chromebook!
date: 2015-02-07T15:07:56+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1333
permalink: /2015/02/07/transformando-seu-notebook-em-um-chromebook/
image: /wp-content/uploads/2014/12/Screenshot-2014-12-21-at-12.31.321-1200x675.png
headerImage: false
star: false
category: blog
categories:
  - Cloud
  - Linux
  - Programação
  - TIC
tags:
  - Chrome
  - Chrome OS
  - Chromium
  - Chromium OS
  - Fica a dica
  - Google
  - Notebook
  - Redes de Computadores
---
Em Dezembro, quando comecei minhas férias do trabalho, iniciei com a cabeça cheia de ideias! E uma delas foi converter um dos meus notebooks para um chromebook! Porque? Atualmente uso um Ubuntu Linux neste notebook e analisando o meu uso, acredito que poderia portar para um sistema operacional baseado em nuvem! Fora que o desafio de converter um note em um Chromebook foi o que também o meu motivador! Hehehe!

<!--more-->

Vamos a configuração do meu note:

  * Dell Inspiron 1564 (2010)
  * Intel Core i3 (1ª geração)
  * 4Gb de memória RAM
  * 250Gb de disco (se bem que chrome os é tudo em cloud né?)

E tenham em mãos:

  * Pen Drive de seus 4Gb

_<span style="text-decoration: underline;">Quem já conhece os meus posts, sabe que embora eu goste de escrever posts grandes, sou adepto da politica do TLDR (Too Long, Don't Read) e por isso, se não quiserem ler tudo, podem ir direto para a <a href="#tldr">receita de bolo</a>.</span>_

Onde encontrar o Chrome OS? Essa foi a minha empreitada, e verifiquei que do mesmo jeito que o navegador, o sistema operacional tem dois modos: um opensource e outro não.

  * Opensource: Chromium OS
  * Google Chromebook: Chrome OS

Não preciso perder muito meu tempo explicando que o opensource é o que temos por aí com alguns mantenedores do código (eu conheci dois, já comento deles) e o fechado pelo Google é o que encontramos nas lojas mantidos pelas grandes marcas como Dell, Samsung e HP.

Então fui atras dos mantenedores do Chromium OS. Encontrei o <a href="http://chromeos.hexxeh.net/" target="_blank">Hexxeh</a> (na realidade é o mais falado nas redes sociais e foruns), mas infelizmente ele descontinuou as atualizações desde abril de 2013. Depois encontrei outro mantenedor, o <a href="http://arnoldthebat.co.uk/" target="_blank">Arnold, The Bat</a>, um pouco menos falado que o Hexxeh, mas é o mais atualizado atualmente, com builds diarios, semanais e especiais (versões modificadas com suporte a um determinado hardware, por exemplo). Para o meu caso, precisei de uma versão especial do Bat: suporte a placa de rede sem fio da Broadcom, placa que é um problema no mundo Linux, porque o driver é proprietário.

<a id="tldr"></a>**Receita de bolo**

Para converter um notebook em um chromebook, você deve:

  * Baixar a imagem que mais terá compatibilidade do site do Bat: http://chromium.arnoldthebat.co.uk/
  * Descompacte a imagem de dentro do arquivo
  * Para gravar a imagem em um pendrive 
      * Sugiro sempre o uso de linux para isso: if=ChromeOS.img of=/dev/sdX bs=4M (onde ChromeOS.img é o nome da imagem descompactada, e sdX é a unidade do seu pendrive)
      * Se quiser usar via windows: Tem um gravador de pendrive sugerido pelo próprio Bat, o <a title="Win32 Image Writer" href="https://launchpad.net/win32-image-writer/" target="_blank">Win32 Image Writer</a>. Testei ele e não curti, achei muito limitado.
  * Depois disso, faça o boot pelo pendrive, lembrando: 
      * Precisa de internet SEMPRE
      * Precisa de uma Conta Google
  * Teste todo o hardware! 
      * Eu tive problemas com mouse e com a placa de rede sem fio, para resolver, use os meus scripts: <a title="Problemas com o mouse?" href="https://gist.github.com/lpsouza/d5e2ba84ef3a2217c8c5" target="_blank">Mouse</a> e <a title="Problemas com a Wireless da Broadcom?" href="https://gist.github.com/lpsouza/9e769d9222224b99a7df" target="_blank">Broadcom</a>. Como executar um script no Chromium OS? 
          * Use o atalho: Ctrl + Alt + T e digite: "shell" (sem as aspas)
          * Depois digite: "sudo su -" (sem as aspas)
          * A senha da imagem do Bat é _password_
  * Depois de testado tudo e com o OK, vamos gravar essa imagem no HD do notebook: 
      * Atalho: Ctrl + Alt + T
      * Digite: install
      * Seguir as informações solicitadas (ATENÇÃO: Tudo que tem no seu HD será apagado)

Dá um pouco de trabalho, mas vale a tentativa! 🙂

&nbsp;