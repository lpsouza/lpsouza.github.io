---
notion_id: 557b2a36-95ed-441e-9566-cc107b62cf5f
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2012-05-14T15:30:00.000Z
last_modified_at: 2022-05-19T22:03:00.000Z
category: Tech
published: true
title: Descobrindo a idade através da data de nascimento
tags:
  - Algoritimo
  - Calculo
  - Data
  - Idade
  - Nascimento
  - PHP
  - Programação
image: null
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

