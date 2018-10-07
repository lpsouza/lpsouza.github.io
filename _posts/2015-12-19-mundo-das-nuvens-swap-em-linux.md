---
id: 1465
title: 'Mundo das nuvens: Swap em linux'
date: 2015-12-19T12:45:49+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1465
permalink: /2015/12/19/mundo-das-nuvens-swap-em-linux/
headerImage: false
star: false
category: blog
categories:
  - Cloud
  - Linux
  - TIC
tags:
  - Cloud
  - Cloud Computing
  - Compute
  - Linux
  - Memory
  - Storage
  - Swap
  - Swap Memory
  - swapfile
  - Virtual Machine
  - Virtual Memory
  - VM
  - VM image
---
Desde que iniciei minha vida nas nuvens (cloud computing ou cloud services), uma questão que sempre tenho que resolver, é a questão de criar a memória de swap. Os provedores de nuvem pública não deixam configurados espaços de memória swap, mas porque?

  1. A maneira mais fácil de ter uma imagem de sistema operacional para qualquer configuração de máquina
  2. Como prever um espaço em disco para swap em um disco que nem sabemos qual tamanho vai ter? 🙂

Então uma boa prática quando falamos em nuvem e ambiente Linux, é configurar a memória swap! Mas e a áreas de disco? Preciso de outro HD virtual só para isso? Mais custos? &#8211; Calma! Vamos a fatos que nos permitem criar uma área de swap de maneira fácil e prática de mover, aumentar ou diminuir (bem conceitos de nuvem)!

  * Podemos criar uma área de swap em arquivo, então, dependendo podemos usar as partições que temos disponiveis
  * Usar swap é sempre interessante, justamente em ambientes que podem sofrer &#8220;bursts&#8221; (pequenos surtos de uso intenso de memória) inesperados (outro conceito de nuvem)
  * Para um datacenter de alto desempenho (ambiente esperado em provedores de nuvem) trabalhar com área de disco ou arquivo é _quase_ a mesma coisa
  * Alguns datacenters (eu conheço apenas a [Microsoft Azure](https://azure.microsoft.com)), que permitem ter um &#8220;disco temporário&#8221;, que foi concebido exatamente para fins de cache ou swap de aplicações

Ok, vamos a **receita de bolo**:

Deixo um conjunto de comandos que podem ser facilmente colocados em um script de inicialização.

<pre><code class="sh">fallocate -l 512m /tmp/swapfile
chown root:root /tmp/swapfile
chmod 600 /tmp/swapfile
mkswap /tmp/swapfile
chmod 600 /tmp/swapfile
swapon /tmp/swapfile
</code></pre>

Lembro aqui que estou criando um arquivo `swapfile` em um diretório `/tmp/`, isso não deve ser feito em ambientes de produção (use o espaço que você tem para dados e extenda mais um pouquinho para este tipo de arquivo.