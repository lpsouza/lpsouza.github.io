---
author: lpsouza
category: blog
date: 2016-08-11 15:46:09+00:00
layout: post
published: true
tags:
- Fica a dica
- PowerShell
- Prompt de Comando
- Recursivo
- Rename
- Windows
title: 'Powershell: Renomeando arquivos recursivamente'
---

Uma demanda que me surgiu no trabalho foi a de renomear diversos arquivos em diversas pastas no projeto que desenvolvemos. Em Linux é relativamente fácil, mas aqui usamos Windows, e agora? Aí entrou uma rápida busca na internet de como fazer isso e não é que encontrei? Powershell na veia!

```powershell
Get-ChildItem -File -Recurse | % { Rename-Item -Path $_.PSPath -NewName $_.Name.replace(".less",".less.old")}
```

Fácil não?

via [Recursively renaming files with Powershell](http://stackoverflow.com/a/21611922)