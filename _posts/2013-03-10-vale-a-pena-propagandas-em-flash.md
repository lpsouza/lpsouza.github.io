---
id: 1177
title: Vale a pena propagandas em Flash?
date: 2013-03-10T12:10:00+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1177
permalink: /2013/03/10/vale-a-pena-propagandas-em-flash/
headerImage: false
star: false
category: blog
categories:
  - Programação
  - TIC
  - WWW
tags:
  - CSS
  - Fica a dica
  - Flash
  - HTML
  - HTML5
  - JavaScript
  - jQuery
  - JS
  - Marketing
  - Publicidade
---
Hoje de manhã, depois de ler uma reportagem em meu tablet, percebi que uma das páginas de propaganda não abriu corretamente, outras sim, e logo pensei: “Algum anunciante acabou de perder meu view.”

<!--more-->

Então resolvi fazer este post, para conscientizar o pessoal que desenvolve soluções em marketing&nbsp; de algo que a seus 10 a 12 anos venho falando: Flash é instrumento de animação, não de programação! Embora ele possua uma linguagem de programação da Adobe, o ActionScript, o projeto dele é animação.

Então alguns devem estar se perguntando: “Mas então projeto a campanha de marketing em que?” e a resposta é: HTML + CSS + JS! Como quase tudo na Web deveria ser, o projeto de uma página, toda a parte escrita precisa ser em HTML, e a parte multimídia, um conjunto de CSS e JS. Não é dificil, apenas precisa de profissional qualificado, um programador.

### Mas porque não usar Flash?

Se observarmos na internet, o Flash é usado direto em campanhas de marketing, então porque não usar?

Nas primeiras versões dele, o peso do arquivo era um problema claro. Mas nas últimas versões, isso não é mais uma realidade. Mas a questão de não usar vai mais alem, duas razões:

  1. Ele normalmente não é indexado no Google;
  2. Dependendo do dispositivo, ele não abre (porque precisa de plugin, ou porque não tem suporte).

### Um estudo de caso <font size="2">(o que me levou a este post)</font>

Vamos analisar a imagem a baixo:

<p align="center">
  <a href="wp-content/upload/2013/03/1362831418416.jpg"><img title="1362831418416" style="border-left-width: 0px; border-right-width: 0px; background-image: none; border-bottom-width: 0px; padding-top: 0px; padding-left: 0px; display: inline; padding-right: 0px; border-top-width: 0px" border="0" alt="1362831418416" src="wp-content/upload/2013/03/1362831418416_thumb.jpg" width="222" height="244" /></a>
</p>

<p align="left">
  É uma screenshot do meu tablet, onde estava lendo uma repostagem, e para existir o site de notícias em questão, eles trabalham com publicidade, certo? Ok, então reparem que existia propagandas que conseguiu abrir em meu tablet e outra não.
</p>

<p align="left">
  Imagina se eu fosse o anunciante, que pagou para ter minha propaganda (que pelo tamanho é a de destaque no site), ver que ela não abriu na página em que anunciei. Qual o impacto negativo que isso vai passar? Fiz um investimento e o mesmo não me gerou retorno. Culpo quem? O site? A empresa de propaganda? E alias, se pensam que “devo fazer em Flash por causa da interatividade”, a propaganda no canto superior direito era animada.
</p>

<h3 align="left">
  Pare de reclamar, me fale de soluções!
</h3>

<p align="left">
  <img title="html5_no_flash_inside" style="border-top: 0px; border-right: 0px; background-image: none; border-bottom: 0px; float: left; padding-top: 0px; padding-left: 0px; border-left: 0px; display: inline; padding-right: 0px" border="0" alt="html5_no_flash_inside" align="left" src="wp-content/upload/2013/03/html5_no_flash_inside.jpg" width="184" height="240" />
</p>

A melhor solução é trabalhar com as novas plataformas da web 2.0, o HTML5, unido ao CSS3 e frameworks de JavaScript, como <a href="http://www.jquery.com" target="_blank">jQuery</a>.

Alem de sites muito mais atraentes, a combinação destas tecnologias, que rodam 100% em navegadores como Firefox (v19), Chrome (v25) e até o Internet Explorer (v10). Todos em suas <a href="http://html5test.com/compare/browser/chrome25/ff19/ie10.html" target="_blank">versões mais recentes</a>.

Mas e os navegadores que usam versões anteriores? Aí entra todo um trabalho de adaptar com scripts. Aqui o mais conhecido: [HTML5 IE enabling script](https://code.google.com/p/html5shiv/).

Alguns scripts de configuração de publicidade com jQuery:

  * <a href="http://www.9lessons.info/2010/04/load-banner-advertisement-with-jquery.html" target="_blank">Loading Banner Advertisements with Jquery</a>
  * <a href="http://www.webanddesigners.com/15-jquery-slideshow-and-plugins/" target="_blank">15 jQuery slideshow/gallery plugins</a> <font size="1">(Slideshows são legais para passar diversos clientes ou diversos produtos)</font>
  * <a href="http://www.webresourcesdepot.com/customizable-jquery-gallery-plugin-ad-gallery/" target="_blank">Customizable jQuery Gallery Plugin: Ad Gallery</a>

E por aí vai! Faça uma busca no <a href="http://www.google.com" target="_blank">Google</a>!

### Por fim…

Deixo pr vocês a definição da Adobe, sobre o que é o Flash:

> O software Adobe® Flash® Professional CS6 é um ambiente de autoria avançado para criação de conteúdo de animação e multimídia.

Trecho extraído de [http://www.adobe.com/br/products/flash.html](http://www.adobe.com/br/products/flash.html "http://www.adobe.com/br/products/flash.html") (acesso em 10 de março de 2013).

Sempre fui da frase: “Cada macaco no seu galho” e acho que essa ainda é uma boa frase, quando falamos de desenvolvimento WEB.