---
notion_id: 871bc922-2ea6-4b4a-b98a-a7f8905d82c6
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2019-12-15T22:27:00.000Z
last_modified_at: 2022-12-19T20:48:00.000Z
category: Tech
published: true
title: Descompactando arquivos no Windows Server Core 2016
tags:
  - powershell
  - windows
  - windows server
  - windows server core
  - server core
image: null
---

Para usuários Windows da vida, o uso do Server Core pode se tornar uma experiência bem traumática, principalmente por não termos uma "interface gráfica" com "cara de Windows". Mas para o bom técnico em TI que entende o "preço que um server paga" por ter uma interface gráfica ativada.

Então uma forma de ter servidores Windows mais "enxutos" é usar a instalação no modo core! E agora os dilemas... Um deles é descompactar um simples zip, onde quando temos a interface gráfica é um simples duplo clique do seu mouse. Pois vamos lá! Powershell como sempre fazendo os caminhos do server core e dos amantes de scripts uma vida melhor!

Segue a ideia:

```Powershell

Add-Type -AssemblyName System.IO.Compression.FileSystem

function Unzip

{

    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)

}

```

Uma vez rodado isso é só usar o seguinte comando:

```Powershell

Unzip "C:\a.zip" "C:\a"

```

Essa dica eu achei aqui no post: [How to unzip a file in Powershell?](https://stackoverflow.com/a/27768628).

