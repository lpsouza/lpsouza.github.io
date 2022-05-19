---
notion_id: 63f5d9f8-757e-4cc4-bcb4-09fce6051b16
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2014-02-08T20:39:00.000Z
last_modified_at: 2022-05-19T22:04:00.000Z
category: Tech
published: true
title: "Windows Server 2012: Server Core ou Server GUI?"
tags:
  - Computadores
  - Fica a dica
  - Informática
  - Powershell
  - Server
  - Server Core
  - Server GUI
  - windows
  - Windows Server
  - Windows Server 2012
image: https://luizsouza.com/wp-content/uploads/2014/02/IC2357571.png
---

Estou configurando um servidor no meu notebook (máquina virtual no Hyper-V) e me deparei com a questão de qual tipo de instalação deveria escolher, a _Server Core_ ou a _Server GUI_? Primeiro, vamos entender o que cada uma impacta na instalação:

**Server GUI**: É a versão que todos conhecem do servidor, isto é, vem completa a interface de administração. Em resumo, é a velha carinha de qualquer Windows que conhecemos (na realidade, o Server 2012 tem uma cara mais simples do Windows 8).

**Server Core**: Uma versão de instalação criada desde o Server 2008, onde apenas um prompt de comando é colocado como interação do usuário. Lembra muito a ideia de um linux server (normalmente apenas em modo console).

Ok, mas porque uma ou porque a outra? Depende do uso do servidor. Vamos a um exemplo: Um servidor apenas para banco de dados SQL Server, não precisamos de uma tela com iniciar e tudo mais. Outro exemplo: Um servidor de RDS (Remote Desktop Services), bom, preciso inicialmente de um desktop, por tanto um servidor completo.

Agora, quanto ao primeiro exemplo, você pode pensar: "Tá, mas ter ou não ter interface desktop no servidor tanto faz!" E já te digo que faz diferença sim! Esse conceito de "Server Core" vem do linux, que por sua vez tem uma performance muito boa, e muito se dá justamente porque ele nativamente não tem infra estrutura de desktop. Então, normalmente ganho seus 2 Gb de espaço em disco, e o uso da memória, que não precisa de informações gráficas (quase).

Disse logo acima, que o tipo "Server Core" veio desde o Windows Server 2008, mas também um problema assim: Ou um, ou outro! Problema que no Server 2012 eles arrumaram! (Coisa boa!) Em resumo, tanto faz a instalação que tu colocar no inicio, tem como converter em na outra!

Como faz isso? PowerShell!

Para fazer essas mudanças, podemos usar os comandos Install-WindowsFeature e Uninstall-WindowsFeature, junto com as features abaixo:

* _Server-Gui-Mgmt-Infra_: Interface Mínima do Servidor

* _Server-Gui-Shell_: Interface básica desktop

* _Desktop-Experience_: Interface com experiência do usuário (fica quase como um Windows 8)

Então, os comandos ficam:

* Server Core: _Uninstall-WindowsFeature Server-Gui-Mgmt-Infra -Restart_

* Server GUI: _Install-WindowsFeature Server-Gui-Mgmt-Infra,Server-Gui-Shell -Restart_

E está aí, agora podemos usar o modo Server GUI para instalar tudo que precisa e depois mudar para o modo Server Core! Microsoft a cada atualização está melhorando mais! (Daí é eu postar isso, uma atualização do Windows Update me detona a instalação! - Brincadeira!) 😛

via [Opções de Instalação do Windows Server](http://technet.microsoft.com/pt-br/library/hh831786.aspx)

