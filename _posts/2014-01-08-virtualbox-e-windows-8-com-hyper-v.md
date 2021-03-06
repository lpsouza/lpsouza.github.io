---
author: lpsouza
category: Tech
date: 2014-01-08 02:13:05
image: https://luizsouza.com.br/wp-content/uploads/2014/01/hyper-v-virtualbox.jpg
layout: post
published: true
tags:
- BCDEdit
- Boot
- Desktop
- Dual Boot
- Hardware
- Hipervisor
- Hyper-V
- Hypervisor
- Informática
- Prompt de Comando
- VirtualBox
- Windows
- Windows 8
- Windows 8.1
title: Virtualbox e Windows 8 com Hyper-V!
---

Sou usuário do [Virtualbox](http://virtualbox.org), quase de carteirinha, quando falamos de virtualizar ambientes em desktop. Agora, desde que instalei o Windows 8, comecei a ter problemas com ele, sem saber o porque. Hoje, descobri e sinceramente fiquei um pouco pasmo de como não havia pensado nisso antes! Alem do Virtualbox, eu uso direto o Hyper-V, e depois que li um post do [Igor Abade](http://twitter.com/igorabade) (MVP), [Fazendo VirtualBox e Hyper-V coexistirem no Windows 8](http://blog.lambda3.com.br/2013/01/fazendo-virtualbox-e-hyper-v-coexistirem-no-windows-8/), fui entender (ou lembrar) de uns conceitos básicos da virtualização como um todo!

Sempre quando faço posts longos, costumo criar a área "**Receita de bolo**", para quem é apressado quiser resolver seus problemas, pular e ir direto na solução. 😛

Em um ambiente virtualizado com uso de Hypervisor pode ocorrer de dois tipos:

**Hypervisor tipo 1**: É quando ele fica gerenciando o hardware diretamente, isto é, ele carrega e trabalha antes do sistema operacional da maquina host. Por sua vez, este sistema operacional é carregado como um sistema operacional virtualizado e primário para as ações do hypervisor. O Hyper-V é um ótimo exemplo deste tipo de sistema!

![Exemplo de Hypervisor tipo 1](https://upload.wikimedia.org/wikipedia/commons/b/b3/Hipervisor_-_Primer_nivel.svg)  
Fonte: Wikipédia

**Hypervisor tipo 2**: É quando a virtualização passa usando o sistema operacional host para acessar o hardware. Assim, tanto o sistema de virtualização, nunca acessa diretamente o hardware. E um exemplo deste sistema é o Virtualbox!

![Exemplo de Hypervisor do tipo 2](https://upload.wikimedia.org/wikipedia/commons/9/91/Hipervisor_-_Segundo_nivel.svg)  
Fonte: Wikipédia

Por tanto, quando temos um Windows 8 com Hyper-V instalado, ele deixa de ser considerado um sistema operacional que acessa diretamente o hardware e passa a ser mais um que usa do hypervisor para trabalhar. E como o Virtualbox não precisa acessar diretamente o hardware, para ele, basta clicar no executável e sair usando. Uma curiosidade, e o que ajuda na ilustração do que estou falando, você já tentou instalar um Hyper-V dentro de uma máquina virtualizada? Ele não deixa, dizendo que não tem como reconhecer este hardware para virtualizar. O Virtualbox instala lisinho! 😛

Ok, então foi exatamente isso que vivi com meu Windows 8 e não havia compreendido (até agora) o que acontecia que muitos dos recursos legais do Virtualbox não rodavam bem, e para piorar, a performance das máquinas virtuais estavam a desejar (em comparação com outros hardwares sem o Hyper-V).

No blog, o Igor comenta na solução em prompt, que eu até então desconhecia, chamda bcdedit. Acessando o Prompt de Comando com elevação (acessando como Administrador), e vendo o help do comando, temos a explicação dele:

> BCDEDIT - Editor de Repositório de Dados de Configuração da Inicialização
>
> A ferramenta de linha de comando Bcdedit.exe modifica o repositório de dados de configuração da inicialização. Este repositório contém parâmetros de configuração da inicialização e controla o modo como o sistema operacional é inicializado. Esses parâmetros estavam anteriormente no arquivo Boot.ini (nos sistemas operacionais baseados em BIOS) ou nas entradas de RAM não voláteis (nos sistemas operacionais baseados em EFI). Você pode usar o Bcdedit.exe para adicionar, excluir, editar e anexar entradas no repositório de dados de configuração da inicialização.

Vou ser sincero com vocês que preciso urgente aprender mais sobre comandos em prompt desde o Windows 7 para frente, tem muita coisa boa e ainda por cima tem o Powershell, que aí é só maravilha!

## Receita de bolo

Para resolver a questão de usar o Virtualbox, junto com o Hyper-V, então precisamos fazer um Dual Boot na maquina, um inicializando o Hypervisor e outro não (para o Virtualbox ter seu espaço direto ao hardware). Não se preocupe, se pensou que precisa reinstalar o Windows para isso, são apenas dois comandos, usando o Prompt de Comando com elevação:

`bcdedit /copy {current} /d "Windows 8 (com Hyper-V)"`

e

`bcdedit /set {current} hypervisorlaunchtype off`

Pronto! Dois boots ao mesmo sistema operacional, um com Hyper-V e outro não! 😉

![Dual boot depois de alterado](https://www.lambda3.com.brhttps://luizsouza.com.br/wp-content/uploads/2013/01/image32.png)  
Fonte: Blog do Lambda3

O legal, pelo menos comigo, é que não fico quieto, e já estou estudando esse boot manager do Windows 8 para outras personalizações! Agradeço ao Igor pelo post no Blog do Lambda3! Até a próxima!