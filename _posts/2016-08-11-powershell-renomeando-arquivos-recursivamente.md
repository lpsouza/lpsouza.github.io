---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2016-08-11 12:46:00-03:00
image: null
last_modified_at: 2023-10-15 01:01:20.302832-03:00
layout: post
published: true
tags:
- fica-a-dica
- powershell
- prompt-de-comando
- recursivo
- rename
- windows
title: 'Powershell: Renomeando arquivos recursivamente'
---

Uma demanda que me surgiu no trabalho foi a de renomear diversos arquivos em diversas pastas no projeto que desenvolvemos. Em Linux é relativamente fácil, mas aqui usamos Windows, e agora? Aí entrou uma rápida busca na internet de como fazer isso e não é que encontrei? Powershell na veia!

```powershell

Get-ChildItem -File -Recurse | % { Rename-Item -Path $_.PSPath -NewName $_.Name.replace(".less",".less.old")}

```

Fácil não?

via [Recursively renaming files with Powershell](http://stackoverflow.com/a/21611922)
