---
notion_id: 4e6540c5-c67a-474e-b690-12d0396c3a1f
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2015-07-09T12:31:00.000Z
last_modified_at: 2022-12-19T20:48:00.000Z
category: Tech
published: true
title: Fazendo um "tail" em arquivos no Windows [PowerShell]
tags:
  - fica a dica
  - informática
  - log
  - powershell
  - sistema operacional
  - tail
  - windows
image: null
---

Sempre que estou usando meu ambiente em Windows, acho um problema a forma de fazer um "tail" nos arquivos, para ler em tempo de inserção (normalmente arquivos de log).

Eis que hoje me deparo com um artigo muito legal que é [13 Ways to Tail a Log File on Windows & Linux](http://stackify.com/11-ways-to-tail-a-log-file-on-windows-unix/). No artigo mostra diversas formas de fazer a leitura de arquivos tanto no Windows, quando no Linux, mas a que achei mais simples, fácil e sem requerer instalações é a usando o **PowerShell**:

```powershell

Get-Content arquivo.log -Wait

```

Se quiser fazer filtros, podemos usar outro comando concatenado chamado **where**:

```powershell

Get-Content myTestLog.log -wait | where { $_ -match "WARNING" }

```

Barbadinha né? 😉

