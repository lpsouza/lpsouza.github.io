---
author: lpsouza
category: Tech
date: 2014-08-30 16:27:36
image: https://luizsouza.com.br/wp-content/uploads/2014/08/0x00000113.png
layout: post
published: true
tags:
- '0x00000113'
- 8670M
- AMD
- Direct X
- Erro
- Fica a dica
- Fix It
- HD Graphics
- Intel
- Microsoft
- Radeon
- SFC
- Video
- Windows
- Windows 8.1
title: Erro ao retornar do suspender no Windows 8.1
---

Estive com um problema nas últimas semanas com meu notebook, onde ao retornar de um suspender, ele simplesmente reiniciava! Para os mais leigos, quando um computador com Windows (desktop) reiniciar do nada, ou por uma ação, é bem provável que é um caso de BSOD (Blue Screen Of Death), ou a famosa "Tela Azul Da Morte".

A BSOD é causada, normalmente, por uma instrução do sistema operacional que levou a um erro critico, e para a proteção e funcionamento do sistema, salva a memória em um arquivo chamado MEMDUMP para diagnóstico e reinicia para tentar resolver o problema. Então isso não é uma coisa ruim, apenas um sistema de proteção, mas convenhamos que é um problema se por um acaso for um momento onde você estava fazendo algo e não tenha salvo (um documento ou um jogo, por exemplo).

Comigo aconteceu em momentos bem tensos em que precisei urgente suspender meu notebook e ao voltar, simplesmente perdia tudo! Então fui atras do erro, porque estava passando por esse caso de BSOD, e vendo os logs de sistema, identifiquei o erro 0x00000113 e pesquisando na internet, deu como "VIDEO\_DXGKRNL\_FATAL_ERROR", erro direcionado a drivers do Direct X.

Para corrigir problemas nas DLLs do Direct X (no Windows 8 é padrão do SO rodar a versão 11), usei o aplicativo SFC para corrigir arquivos de sistema corrompidos.

`sfc /scannow`

Ao final do diagnostico, ele informou que ainda tinha arquivos que estavam corrompidos. O que fazer? Google!

Após pesquisar um pouco, achei no site de suporte da Microsoft um artigo que caiu como uma luva: <a title="0x113 de erro de parada se você usar adaptadores de gráficos Intel e AMD em um computador baseado em Windows 8.1" href="http://support.microsoft.com/kb/2990029" target="_blank">0x113 de erro de parada se você usar adaptadores de gráficos Intel e AMD em um computador baseado em Windows 8.1</a>. Este é exatamente o universo do meu note:

* Windows 8.1
* Duas placas de vídeo
  * Intel HD Graphics
  * AMD Radeon HD 8670M

No artigo, pede para rodar um hotfix lançado pela Microsoft. Para quem quiser, deixou ele abaixo.

[Microsoft Fix It](http://go.microsoft.com/?linkid=9852297)

Problema resolvido! 😀

**Edit 22/04/2018**: O link da Microsoft para o FixIt leva a uma mensagem do fim do suporte ao FixIt! Mas nosso amigo [Douglas](https://luizsouza.com.br/2014/08/30/erro-ao-retornar-do-suspender-no-windows-8-1/#comment-4122478287) conseguiu uma alma caridosa que subiu no Mega o arquivo! Segue o link: [https://mega.nz/#!kdsUxSJR!lYUkppKJjNtSJ\_xJoubqrrV\_dPLdPMKlMV0kmVojdk8](https://mega.nz/#!kdsUxSJR!lYUkppKJjNtSJ_xJoubqrrV_dPLdPMKlMV0kmVojdk8)