---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2019-12-15 19:27:00-03:00
image: null
last_modified_at: 2023-10-15 01:01:20.310803-03:00
layout: post
published: true
tags:
- powershell
- windows
- windows-server
- windows-server-core
- server-core
title: Descompactando arquivos no Windows Server Core 2016
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
