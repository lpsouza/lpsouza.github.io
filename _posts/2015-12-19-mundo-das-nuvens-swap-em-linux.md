---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2015-12-19 10:45:00-02:00
image: null
last_modified_at: 2023-10-15 01:01:20.301199-03:00
layout: post
published: true
tags:
- cloud
- cloud-computing
- compute
- linux
- memory
- storage
- swap
- swap-memory
- swapfile
- virtual-machine
- virtual-memory
- vm
- vm-image
title: 'Mundo das nuvens: Swap em linux'
---

Desde que iniciei minha vida nas nuvens (cloud computing ou cloud services), uma questão que sempre tenho que resolver, é a questão de criar a memória de swap. Os provedores de nuvem pública não deixam configurados espaços de memória swap, mas porque?

1. A maneira mais fácil de ter uma imagem de sistema operacional para qualquer configuração de máquina

2. Como prever um espaço em disco para swap em um disco que nem sabemos qual tamanho vai ter? 🙂

Então uma boa prática quando falamos em nuvem e ambiente Linux, é configurar a memória swap! Mas e a áreas de disco? Preciso de outro HD virtual só para isso? Mais custos? - Calma! Vamos a fatos que nos permitem criar uma área de swap de maneira fácil e prática de mover, aumentar ou diminuir (bem conceitos de nuvem)!

* Podemos criar uma área de swap em arquivo, então, dependendo podemos usar as partições que temos disponíveis

* Usar swap é sempre interessante, justamente em ambientes que podem sofrer "bursts" (pequenos surtos de uso intenso de memória) inesperados (outro conceito de nuvem)

* Para um data center de alto desempenho (ambiente esperado em provedores de nuvem) trabalhar com área de disco ou arquivo é _quase_ a mesma coisa

* Alguns data centers (eu conheço apenas a [Microsoft Azure](https://azure.microsoft.com)), que permitem ter um "disco temporário", que foi concebido exatamente para fins de cache ou swap de aplicações

Ok, vamos a **receita de bolo**:

Deixo um conjunto de comandos que podem ser facilmente colocados em um script de inicialização.

```bash

fallocate -l 512m /tmp/swapfile

chown root:root /tmp/swapfile

chmod 600 /tmp/swapfile

mkswap /tmp/swapfile

chmod 600 /tmp/swapfile

swapon /tmp/swapfile

```

Lembro aqui que estou criando um arquivo `swapfile` em um diretório `/tmp/`, isso não deve ser feito em ambientes de produção (use o espaço que você tem para dados).
