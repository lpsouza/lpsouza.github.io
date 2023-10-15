---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2019-01-02 19:29:00-02:00
image: null
last_modified_at: 2022-12-19 17:48:00-03:00
layout: post
published: true
tags:
- powershell
- hyperv
- hyper-v
- disk
- vhd
- vhdx
- windows
- microsoft
title: Utilizando o Powershell para obter o espaço em disco das maquinas virtuais
  no Hyper-V
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
