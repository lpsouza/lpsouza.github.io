---
notion_id: d5797533-1d0a-431c-b468-3179fac29dd2
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2016-01-11T23:53:00.000Z
last_modified_at: 2022-05-19T22:04:00.000Z
category: Tech
published: true
title: Chrome.exe com erro 0xc0000018 [Resolvido]
tags:
  - "0xc0000018"
  - Browser
  - Browsers
  - Chrome
  - Edge
  - Erro
  - Error
  - Fica a dica
  - Internet Explorer
  - microsoft
  - Navegadores
  - Registro
  - windows
  - Windows 10
image: https://luizsouza.com/wp-content/uploads/2016/01/chrome-error1.jpg
---

Agora a pouco liguei meu notebook no meu Windows 10, já que fazia uns dias que só estava usando o meu Linux e quando fui abrir meu Google Chrome, me deparei com esta mensagem abaixo:

"A aplicação não pôde ser inicializado corretamente (0xc0000018). Clique em OK para fechar o aplicativo."

Bom, logo pensei: Bah! O Chrome corrompeu! Vou abrir o Edge para verificar isso no Google... E para a minha surpresa, também deu o mesmo erro! E adivinhem se o Internet Explorer não estava apresentando o mesmo erro?!??

Então via smartphone, achei esta solução: [Fixing "the application was unable to start correctly (0xc0000018)" in Windows](http://www.ghacks.net/2015/10/16/fixing-the-application-was-unable-to-start-correctly-0xc0000018-in-windows/).

A solução para mim foi um pouco diferente do que ele comenta no post, mas foi o caminho da solução:

  1. Abra o executar e digite: regedit (e clique em OK).

  2. Confirme que você quer executar o Regedit.

  3. Navegue nas pastas até HKEY\_LOCAL\_MACHINE\SOFTWARE\Wow6432Node\­Microsoft\WindowsNT\CurrentVersion\Windo­­ws

  4. Localize a chave "APPINIT_DLLS", ~~dê um duplo clique e delete todos os caracteres~~ delete esta chave.

Reiniciando o computador, consegui acesso a todos os executáveis que estavam dando erro de acesso!

Era isso pessoal! 😉

