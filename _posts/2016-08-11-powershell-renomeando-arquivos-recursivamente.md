---
notion_id: 1d518266-6da7-4a45-8992-41a1120b1c00
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2016-08-11T15:46:00.000Z
last_modified_at: 2022-12-19T20:48:00.000Z
category: Tech
published: true
title: "Powershell: Renomeando arquivos recursivamente"
tags:
  - fica a dica
  - powershell
  - prompt de comando
  - recursivo
  - rename
  - windows
image: null
---

Uma demanda que me surgiu no trabalho foi a de renomear diversos arquivos em diversas pastas no projeto que desenvolvemos. Em Linux é relativamente fácil, mas aqui usamos Windows, e agora? Aí entrou uma rápida busca na internet de como fazer isso e não é que encontrei? Powershell na veia!

```powershell

Get-ChildItem -File -Recurse | % { Rename-Item -Path $_.PSPath -NewName $_.Name.replace(".less",".less.old")}

```

Fácil não?

via [Recursively renaming files with Powershell](http://stackoverflow.com/a/21611922)

