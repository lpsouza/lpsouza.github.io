---
id: 911
title: Descobrindo a idade através da data de nascimento
date: 2012-05-14T15:30:00+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=911
permalink: /2012/05/14/descobrindo-a-idade-atraves-da-data-de-nascimento-phpit/
aktt_notify_twitter:
  - 'yes'
aktt_tweeted:
  - "1"
headerImage: false
star: false
category: blog
categories:
  - Programação
tags:
  - Algoritimo
  - Calculo
  - Data
  - Idade
  - Nascimento
  - PHP
  - Programação
---
Dica do Rafael Jaques:

> Algumas vezes você pode necessitar descobrir a idade exata do seu usuário. As vezes ele acaba sendo barrado, apesar de ter a idade correta, mas pelo fato de ele ter completado a idade necessária no ano corrente, acabamos por restringir um usuário que deveria ter acesso.
>
> A idéia básica nesse script é encontrar a timestamp de hoje, a timestamp do nascimento do fulano, subtrair um do outro, dividir pelos 60 segundos, pelos 60 minutos, pelas 24 horas e pelos 365.25 dias do ano. (Ufa!)

Segue o código abaixo:

```php
<?php

// Declara a data! :P
$data = '29/08/2008';

// Separa em dia, mês e ano
list($dia, $mes, $ano) = explode('/', $data);

// Descobre que dia é hoje e retorna a unix timestamp
$hoje = mktime(0, 0, 0, date('m'), date('d'), date('Y'));

// Descobre a unix timestamp da data de nascimento do fulano
$nascimento = mktime( 0, 0, 0, $mes, $dia, $ano);

// Depois apenas fazemos o cálculo já citado :)
$idade = floor((((($hoje - $nascimento) / 60) / 60) / 24) / 365.25);
print $idade;

?>
```

via [Descobrindo a idade através da data de nascimento | PHPit](http://www.phpit.com.br/artigos/descobrindo-a-idade-atraves-da-data-de-nascimento.phpit)
