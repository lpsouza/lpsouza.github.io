---
notion_id: f2fc19c5-b572-41d9-9336-835ec651b0c2
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2015-03-10T16:30:00.000Z
last_modified_at: 2022-05-19T22:04:00.000Z
category: Tech
published: true
title: "CodeIgniter: Roteamentos Inteligentes"
tags:
  - CodeIgniter
  - Controller
  - Fica a dica
  - Programação
  - Rotas
  - Roteamento
  - _remap
image: null
---

O roteamento inteligente permite criar URLs personalizadas. Com isso, a URL padrão do Codeigniter pode ser customizada. O cuidado extra é no _default controller_ onde deve ter um método para implementar o erro de _not found_ (404). No exemplo dos arquivos, ele simula as URLs encontradas em um blog:

* [http://{blog}/{ano}/{mes}/{dia}/{slug-noticia}](http://{blog}/{ano}/{mes}/{dia}/{slug-noticia})

* [http://{blog}/{página}](http://{blog}/{página})

###  Código fonte do arquivo `[project-root]/application/controller/defaultController.php`

```php

class DefaultController extends CI_Controller {

    public function _remap(){

        $s1 = $this->uri->segment(1);

        $s2 = $this->uri->segment(2);

        $s3 = $this->uri->segment(3);

        $s4 = $this->uri->segment(4);

        if($s1 == ''){ $this->index(); }

        elseif((int)$s1 > 0 && (int)$s2 > 0 && (int)$s3 > 0){

            $news = $this->news->getNews($s1, $s2, $s3, $s4);

            $this->siteNews($news);

        }else{

            $page = $this->pages->getPage($s1);

            if($page['id'] > 0){ $this->sitePage($page); }

            else{ $this->error404(); }

        }

    }

}

```

###  Código fonte do arquivo  `[project-root]/application/config/routes.php`

```php

// For auto map

$default_controller = "defaultController";

$controller_exceptions = array('admin');

$route['default_controller'] = $default_controller;

$route["^((?!\b".implode('\b|\b', $controller_exceptions)."\b).*)$"] = $default_controller.'/$1';

$route['404_override'] = '';

```

E era isso! 😉

