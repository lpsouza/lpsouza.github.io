---
notion_id: 55cc0bda-db2a-46e3-9d0e-e22d530983d0
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2017-06-18T18:15:00.000Z
last_modified_at: 2022-12-19T20:48:00.000Z
category: Tech
published: true
title: Download de arquivos via Powershell (parecido com o wget)
tags:
  - download
  - fica a dica
  - powershell
  - wget
  - windows
  - windows server
image: null
---

Essa é uma dica bem rápida. Precisei efetuar o download de uma ISO do Windows Server 2016 em um Hyper-V Server 2016, e a primeira coisa que se sabe deste tipo de servidor, é que não temos recursos visuais, como o explorer ou um navegador. Então, como fazer um download diretamente neste servidor?

Pesquisando na internet, encontrei este post: [3 ways to download files with PowerShell](https://blog.jourdant.me/post/3-ways-to-download-files-with-powershell), onde é exposto três formas de efetuar o download. Bom, das três eu escolhi a não tão prática, mas funcional em um Windows Server sem interface gráfica.

Receita do bolo:

    $url = "http://mirror.internode.on.net/pub/test/10meg.test"

    $output = "10meg.test"

    

    $wc = New-Object System.Net.WebClient

    $wc.DownloadFile($url, $output)

E era isso! Boa manutenção! 😉

