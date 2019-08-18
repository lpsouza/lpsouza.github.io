---
id: 1618
title: Download de arquivos via Powershell (parecido com o wget)
date: 2017-06-18T18:15:16+00:00
author: lpsouza
layout: post
guid: https://luizsouza.com.br/?p=1618
permalink: /2017/06/18/download-de-arquivos-via-powershell-parecido-com-o-wget/
headerImage: false
star: false
category: blog
categories:
  - TIC
  - Windows
tags:
  - Download
  - Fica a dica
  - PowerShell
  - wget
  - Windows
  - Windows Server
---
Essa é uma dica bem rápida. Precisei efetuar o download de uma ISO do Windows Server 2016 em um Hyper-V Server 2016, e a primeira coisa que se sabe deste tipo de servidor, é que não temos recursos visuais, como o explorer ou um navegador. Então, como fazer um download diretamente neste servidor?

Pesquisando na internet, encontrei este post: [3 ways to download files with PowerShell](https://blog.jourdant.me/post/3-ways-to-download-files-with-powershell), onde é exposto três formas de efetuar o download. Bom, das três eu escolhi a não tão prática, mas funcional em um Windows Server sem interface gráfica.

Receita do bolo:

    $url = "http://mirror.internode.on.net/pub/test/10meg.test"
    $output = "10meg.test"
    
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $output)

E era isso! Boa manutenção! 😉
