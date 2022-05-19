---
notion_id: b81a10ea-17e4-43ed-90ec-b3a0220f950e
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2019-01-02T21:29:00.000Z
last_modified_at: 2022-05-19T22:05:00.000Z
category: Tech
published: true
title: Utilizando o Powershell para obter o espaço em disco das maquinas
  virtuais no Hyper-V
tags:
  - Powershell
  - hyperv
  - hyper-v
  - disk
  - vhd
  - vhdx
  - windows
  - microsoft
image: null
---

Quando falamos de universo "Windows", acredito que para os usuários avançados e administradores de servidores o Powershell é com certeza uma mão na roda! Então durante um pedido que me foi feito no trabalho de "listar e somar" os discos virtuais (VHDX) das VMs contidas em alguns servidores de Hyper-V, criei um pequeno script que faz esse trabalho!

O script basicamente obtém as VMs e, passando por um filtro, obtém os discos e faz uma soma deles por VM. Ao final o retorno do script é uma lista das VMs com seu respectivo tamanho total de disco. Fácil não?

```powershell

Get-VM | Where-Object { $_.Name -like "VM*" } | ForEach-Object {

    $VHDSize = 0;

    $VMName = $_.Name;

    Get-VMHardDiskDrive -VMName $_.Name | ForEach-Object {

        Get-VHD -Path $_.Path | ForEach-Object {

            $VHDSize += $_.Size

        }

    };

    $VHDSizeMB = $VHDSize / (1024 * 1024);

    Write-Host $VMName $VHDSizeMB

}

```

Temos variantes do resultado podem ser obtidas alterando a linha `$VHDSize += $_.Size`. Esta linha trás o tamanho total do VHDX selecionado. Para obter, por exemplo, o uso real do disco, podemos alterar a linha para `$VHDSize += $_.FileSize`.

