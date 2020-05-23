---
id: 1524
title: 'Powershell: Renomeando arquivos recursivamente'
date: 2016-08-11T15:46:09+00:00
author: lpsouza
layout: post
guid: https://luizsouza.com.br/?p=1524
permalink: /2016/08/11/powershell-renomeando-arquivos-recursivamente/
star: false
category: blog
categories:
  - TIC
  - Windows
tags:
  - Fica a dica
  - PowerShell
  - Prompt de Comando
  - Recursivo
  - Rename
  - Windows
---
Uma demanda que me surgiu no trabalho foi a de renomear diversos arquivos em diversas pastas no projeto que desenvolvemos. Em Linux é relativamente fácil, mas aqui usamos Windows, e agora? Aí entrou uma rápida busca na internet de como fazer isso e não é que encontrei? Powershell na veia!

```powershell
Get-ChildItem -File -Recurse | % { Rename-Item -Path $_.PSPath -NewName $_.Name.replace(".less",".less.old")}
```

Fácil não?

via [Recursively renaming files with Powershell](http://stackoverflow.com/a/21611922)
