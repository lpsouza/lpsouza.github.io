---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2016-01-11 21:53:00-02:00
image: /assets/2016-01-11-chrome-exe-com-erro-0xc0000018-resolvido/chrome-error1.jpg
last_modified_at: 2023-10-15 01:01:20.301784-03:00
layout: post
published: true
tags:
- '0xc0000018'
- browser
- browsers
- chrome
- edge
- erro
- error
- fica-a-dica
- internet-explorer
- microsoft
- navegadores
- registro
- windows
- windows-10
title: Chrome.exe com erro 0xc0000018 [Resolvido]
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
