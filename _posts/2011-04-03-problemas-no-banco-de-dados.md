---
id: 718
title: Problemas no banco de dados
date: 2011-04-03T13:30:09+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/2011/04/03/problemas-no-banco-de-dados/
permalink: /2011/04/03/problemas-no-banco-de-dados/
aktt_tweeted:
  - "1"
  - "1"
aktt_notify_twitter:
  - 'yes'
  - 'yes'
headerImage: false
star: false
category: blog
categories:
  - TIC
  - WWW
tags:
  - Hospedagem
  - MySQL
  - Problema
  - Servidor
---
Pois é, hoje (03/04/2011), meu servidor está passando por uma dificuldade de acesso aos recursos de banco de dados em MySQL. Com isso, alguns serviços que sirvo podem não estar funcionando perfeitamente.

Espero que até o final da tarde de hoje esteja resolvido. O problema está sendo investigado pelos técnicos do datacenter, uma vez que não tenho acesso direto a máquina em questão.

**Tecnicamente falando:**

O problema está acontecendo no banco de dados MySQL, onde ele exibe a seguinte mensagem: “#1030 &#8211; Got error 28 from storage engine”. A mensagem se refere ao espaço de processamento temporário de queries no MySQL. Com isso, algumas tarefas de INSERT no banco dá erro, isso inclue a inclusão de logs de controle, e por isso o erro dos serviços.

Agora é aguardar!