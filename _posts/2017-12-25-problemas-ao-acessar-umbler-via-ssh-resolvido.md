---
id: 1653
title: 'Problemas ao acessar a Umbler via SSH [Resolvido]'
date: 2017-12-25T20:42:08+00:00
author: lpsouza
layout: post
guid: https://luizsouza.com.br/?p=1653
permalink: /2017/12/25/problemas-ao-acessar-umbler-via-ssh-resolvido/
image: https://luizsouza.com.br/wp-content/uploads/2017/12/Capturar.png
star: false
category: blog
categories:
  - Linux
  - Programação
  - TIC
  - Windows
tags:
  - Desenvolvimento
  - Fica a dica
  - Hospedagem
  - Hospedagem de Sites
  - Linux
  - Mac
  - SSH
  - Ubuntu
  - Ubuntu on Windows
  - Umbler
  - Windows
---
Faz alguns meses que estou usando a [Umbler](https://app.umbler.com/u/0jrm3d6k) como meu provedor de hospedagem de sites (ué? Tu não tinha um provedor próprio? a [IHCenter](https://ihcenter.com.br/)? - É, tinha... Essa fica para outro post!) e uma coisa muito legal que esta equipe do coala fornecesse é o acesso via SSH, tornando muito mais prática a vida do desenvolvedor de raiz! Pois muito bem, para configurar é extremamente simples, indo apenas pelo painel de controle deles (chamado carinhosamente de APP) e com alguns clicks, tanto em Windows, quanto Linux ou até mesmo MAC, vocês configuram este tipo de acesso. Ah sim! Sugiro configurar com uso de chave pública, porque permite configurações de publicação com uso de GIT (Próprio, Github ou Bitbucket)!

**Aviso**: Se você não quer ler toda a história, vá direto na "Receita de bolo"! 😉

Ok, eis que configurei e tudo estava indo bem, até chegar no meu primeiro acesso, usando o Windows 10 e o sistema "Ubuntu on Windows" (esse papo também merece um post próprio) fui usar o programa ssh e aí... Kaboom! Erro!

`Unable to negotiate with X.X.X.X port X: no matching host key type found. Their offer: ssh-dss`

E aí?!?? O que foi? Como aconteceu?!??

Ok, entendendo de Google Translator, o erro diz: "Não foi possível negociar com  X.X.X.X porta X: nenhum tipo de chave de host correspondente encontrado. Sua oferta: ssh-dss". Bom, erro é na forma de negociar a criptografia com a Umbler! E agora?!?? Em uma breve pesquisa na internet achei esse post no askubuntu com título: _SSH returns: no matching host key type found. Their offer: ssh-dss_. E lá temos [esta resposta](https://askubuntu.com/a/836064): _The version of OpenSSH included in 16.04 disables ssh-dss_. Que numa tradução tosca de minha parte (without Google Translate agora) quer dizer: A versão do OpenSSH inclusa na versão 16.04 desabilitou o ssh-dss.

**Receita de bolo!**

Então para solucionar, crie ou edite o arquivo `~/.ssh/config` e adicione as seguintes linhas:

    Host servidor-ssh-da-umbler
      HostName servidor-ssh-da-umbler
      HostKeyAlgorithms=+ssh-dss

Salve e tente o acesso novamente!

Vale lembrar que este problema, pelo descrito, ocorre nas versões de Ubuntu 16.04 ou superior! E no caso, no Ubuntu on Windows que a Canonical fez para o Windows 10! Bom, sinceramente eu não sei se ocorre em MAC ou usando no Windows o bom e velho PuTTY, uma vez que não uso Apple e desde que a Microsoft e a Canonical criaram essa maravilha de Ubuntu on Windows, eu nunca mais penso no mister PuTTY! E era isso!

:wq
