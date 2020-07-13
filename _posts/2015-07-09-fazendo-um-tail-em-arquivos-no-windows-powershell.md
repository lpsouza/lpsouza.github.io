---
author: lpsouza
category: blog
date: 2015-07-09 12:31:48+00:00
layout: post
published: true
tags:
- Fica a dica
- Informática
- log
- PowerShell
- Sistema Operacional
- tail
- Windows
title: Fazendo um "tail" em arquivos no Windows [PowerShell]
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