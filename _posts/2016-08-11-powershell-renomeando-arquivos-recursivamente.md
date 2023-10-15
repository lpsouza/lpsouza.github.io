---
author:
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
category: Tech
date: 2016-08-11 15:46:00+00:00
image: null
last_modified_at: 2023-10-15 01:01:20.302832-03:00
layout: post
notion_id: 1d518266-6da7-4a45-8992-41a1120b1c00
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
