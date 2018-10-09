---
id: 1376
title: CodeIgniter 3 na Azure Websites
date: 2015-03-08T23:03:37+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1376
permalink: /2015/03/08/codeigniter-3-na-azure-websites/
headerImage: false
star: false
category: blog
categories:
  - Cloud
  - Programação
  - TIC
  - WWW
tags:
  - Azure
  - CodeIgniter
  - CodeIgniter 3
  - Fica a dica
  - IIS
  - Microsoft
  - Microsoft Azure
  - PHP
  - Programação
  - SQL
  - SQL Azure
  - web.config
---
Estou usando faz um mês, a [Microsoft Azure](http://azure.microsoft.com/pt-br/) para meus projetos e estou curtindo bastante! Então, fui começar um projeto usando [CodeIgniter 3](http://www.codeigniter.com/) e me peguei em uns problemas usando ambiente PHP no IIS da Azure Websites: Conexão com o banco de dados (SQL Azure) e redirecionamento de "[URL Amigáveis](http://blog.thiagobelem.net/aprendendo-urls-amigaveis/)".<!--more-->

Então, depois de algumas pesquisas, coloco aqui as configurações de como usar a conexão com o SQL Azure e também como ativar as URL amigáveis no IIS:

Edite o arquivo `application/config/database.php` e use conforme o exemplo (substituir os valores entre colchetes):

https://gist.github.com/lpsouza/a57cad245d9f13a1ceb7#file-database-php

E para ativar as URL amigáveis, crie um arquivo `web.config` dentro da pasta raiz do projeto com o seguinte conteúdo:

https://gist.github.com/lpsouza/a57cad245d9f13a1ceb7#file-web-config

E era isso! Projeto instalado e rodando numa boa em um ambiente altamente escalável em nuvem! 😀