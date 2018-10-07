---
id: 1389
title: 'CodeIgniter: Roteamentos Inteligentes'
date: 2015-03-10T16:30:23+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1389
permalink: /2015/03/10/codeigniter-roteamentos-inteligentes/
headerImage: false
star: false
category: blog
categories:
  - Programação
  - TIC
  - WWW
tags:
  - CodeIgniter
  - Controller
  - Fica a dica
  - Programação
  - Rotas
  - Roteamento
  - _remap
---
O roteamento inteligente permite criar URLs personalizadas. Com isso, a URL padrão do Codeigniter pode ser customizada. Cuidado extra é que no _default controller_ deve ter um método para implementar o erro de _not found_ (404). No exemplo dos arquivos, ele simula as URLs encontradas em um blog:

  * http://{blog}/{ano}/{mes}/{dia}/{slug-noticia}
  * http://{blog}/{página}

**[project-root]/application/config/routes.php**

https://gist.github.com/lpsouza/c1ba0c2334da4ece92af#file-routes-php

**[project-root]/application/controller/defaultController.php**

https://gist.github.com/lpsouza/c1ba0c2334da4ece92af#file-defaultController-php