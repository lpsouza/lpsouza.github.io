---
author: lpsouza
category: blog
date: 2012-05-14 15:30:00+00:00
layout: post
tags:
- Algoritimo
- Calculo
- Data
- Idade
- Nascimento
- PHP
- Programação
title: Descobrindo a idade através da data de nascimento
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