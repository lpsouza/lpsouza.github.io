---
author:
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
category: Tech
date: 2015-03-08 20:03:00-03:00
image: null
last_modified_at: 2023-10-15 01:01:20.297302-03:00
layout: post
published: true
tags:
- azure
- codeigniter
- codeigniter-3
- fica-a-dica
- iis
- microsoft
- microsoft-azure
- php
- programação
- sql
- sql-azure
- web.config
title: CodeIgniter 3 na Azure Websites
---

Estou usando faz um mês, a [Microsoft Azure](http://azure.microsoft.com/pt-br/) para meus projetos e estou curtindo bastante! Então, fui começar um projeto usando [CodeIgniter 3](http://www.codeigniter.com/) e me peguei em uns problemas usando ambiente PHP no IIS da Azure Websites: Conexão com o banco de dados (SQL Azure) e redirecionamento de "[URL Amigáveis](http://blog.thiagobelem.net/aprendendo-urls-amigaveis/)".

Então, depois de algumas pesquisas, coloco aqui as configurações de como usar a conexão com o SQL Azure e também como ativar as URL amigáveis no IIS:

###   Conectando ao SQL Azure

Edite o arquivo `application/config/database.php` e use conforme o exemplo abaixo (substituir os valores entre colchetes):

```php

$db['default'] = array(

    'dsn'    => '',

    'hostname' => 'sqlsrv:Server=tcp:[nome-do-servidor].database.windows.net,1433;Database=[banco-de-dados]',

    'username' => '[username]',

    'password' => '[password]',

    'database' => '[banco-de-dados]',

    'dbdriver' => 'pdo',

    'dbprefix' => '',

    'pconnect' => FALSE,

    'db_debug' => TRUE,

    'cache_on' => FALSE,

    'cachedir' => '',

    'char_set' => 'Latin1',

    'dbcollat' => 'SQL_Latin1_General_CP1_CI_AS',

    'swap_pre' => '',

    'autoinit' => TRUE,

    'encrypt' => FALSE,

    'compress' => FALSE,

    'stricton' => FALSE,

    'failover' => array(),

    'save_queries' => TRUE

);

```

###   Ativando as URL amigáveis

E para ativar as URL amigáveis, crie um arquivo `web.config` dentro da pasta raiz do projeto e use o conteúdo do exemplo abaixo:

```xml

<?xml version="1.0" encoding="UTF-8"?>

<configuration>

    <system.webServer>

        <rewrite>

            <rules>

                <rule name="CodeIgniter rewrite" stopProcessing="true">

                    <match url="^(.*)$" ignoreCase="false" />

                        <conditions logicalGrouping="MatchAll">

                            <add input="{REQUEST_FILENAME}" matchType="IsDirectory" negate="true" />

                            <add input="{REQUEST_FILENAME}" matchType="IsFile" negate="true" />

                        </conditions>

                        <action type="Rewrite" url="index.php?url={R:1}" appendQueryString="true" />

                </rule>

            </rules>

        </rewrite>

        <handlers> 

            <remove name="PHP54_via_FastCGI" />

            <add name="PHP54_via_FastCGI" path="*.php"

                   verb="GET, PUT, POST, DELETE, HEAD" 

                   modules="FastCgiModule" 

                   scriptProcessor="D:\Program Files (x86)\PHP\v5.4\php-cgi.exe"

                   resourceType="Either" requireAccess="Script" />

        </handlers>

    </system.webServer>

</configuration>

```

E era isso! Projeto instalado e rodando numa boa em um ambiente altamente escalável em nuvem! 😀
