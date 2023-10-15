---
author:
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
category: Tech
date: 2016-10-27 00:14:00+00:00
image: null
last_modified_at: 2023-10-15 01:01:20.304983-03:00
layout: post
notion_id: c5311436-3ae2-446e-9ef1-10f2abf6b7a4
published: true
tags:
- computadores
- fica-a-dica
- kernel
- linux
- maquina-virtual
- ubuntu
- vagrant
- virtualbox
- vm
title: Usando Virtualbox com boot seguro no Ubuntu 16.04 [Resolvido]
---

Recentemente instalei no meu computador a última versão LTS do Ubuntu, a 16.04. E quando fui usar o combo [**Vagrant**](https://www.vagrantup.com/) e [**Virtualbox**](https://www.virtualbox.org/), me deparei com um problema ocasionado por alguma mudança na assinatura dos aplicativos para uso de computadores com _Secure Boot** **_(Inicialização Segura), como é o caso do meu notebook.

Ok, lá vamos nós para a internet e o que mais lia por aí era: Desabilite o _Secure Boot_. Sinceramente, eu achei essa solução muito "gambiarra" mesmo, logo, não foi o que resolvi seguir. Então, o que vi em um desses links que apareceram no Google, foi um post no blog do [Flávio Prino](https://flavioprimo.xyz/) que explica como **assinar digitalmente o arquivo de driver** do virtualbox, e assim permitindo que possamos acessar as máquinas do Virtualbox sem erros e com o _Secure Boot_ ativado! 😀

###   Receita do bolo

~~O post tem um passo a passo de 5 etapas, bem simples: [https://flavioprimo.xyz/linux/how-to-install-virtualbox-on-ubuntu-having-uefi-secure-boot-enabled/](https://flavioprimo.xyz/linux/how-to-install-virtualbox-on-ubuntu-having-uefi-secure-boot-enabled/)~~

Siga os 5 passos abaixo:

1. Abra o terminal e instale o virtualbox com `apt-get install virtualbox` (ignore os avisos e pedidos para desativar o boot seguro do UEFI)

2. Crie um “par de chaves X.509”:

  

    `openssl req -new -x509 -newkey rsa:2048 -keyout vboxdrv.priv -outform DER -out vboxdrv.der -nodes -days 36500 -subj "/CN=MySelf/"`

3. Assine o módulo do virtualbox:

  

    `sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./vboxdrv.priv ./vboxdrv.der $(modinfo -n vboxdrv)`

4. Importe a chave pública gerada com: sudo mokutil -import vboxdrv.der

5. Reinicie e siga as telas que aparecerem durante o boot do UEFI para registrar a nova chave. Este procedimento é permanente, então deve ser feito somente uma vez.

###   Dica adicional

Como o kernel pode ser atualizado constantemente (principalmente na versão desktop), eu recomento criar o seguinte script:

```bash

#!/bin/bash

CERTDIR="/path/to/certs"

/usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 $CERTDIR/vboxdrv.priv $CERTDIR/vboxdrv.der $(modinfo -n vboxdrv)

/sbin/modprobe vboxdrv

```

Salve com um nome como **update-vboxdrv.sh** e use sempre que sua versão de kernel for atualizada! 😉
