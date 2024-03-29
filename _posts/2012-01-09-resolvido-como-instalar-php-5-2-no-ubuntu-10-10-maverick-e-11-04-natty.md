---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2012-01-09 07:30:00-02:00
image: null
last_modified_at: 2023-10-15 01:01:20.270924-03:00
layout: post
published: true
tags:
- downgrade
- fica-a-dica
- linux
- php
- server
- ubuntu
- upgrade
- versão
title: '[Resolvido] Como instalar PHP 5.2 no Ubuntu 10.10 (Maverick) e 11.04 (Natty)'
---

O ano de 2011 foi um ano de muito configurar servidor no colégio que trabalho. Tanto que tive exatamente esse problema: Instalar um sistema operacional atual, o ubuntu 10.10 server e me deparar com o caso que o sistema web para portal que usamos funcionava na versão do PHP 5.2.

No meu caso tive um agravante: apt-add-repository não roda na versão server, então foi eu ir no site da Launchpad.net e pegar as configurações para colocar em /etc/apt/sources.list, depois um apt-get update e depois sair removendo o PHP mais novo e instalando o antigo. Mas para quem usa a versão desktop, abaixo a explicação mais simples impossível!

> A solução

>

> É mais fácil que parece! Primeiro, adicionamos o PPA generosamente fornecido pelo Andphe:

>

> sudo apt-add-repository ppa:andphe/php && sudo apt-get update

>

> Agora, com o repositório adicionado e atualizado, abra o Synaptic Package Manager e procure os pacotes do PHP:

>

> ![Synaptic-PHP](/wp-content/uploads/2012/01/synaptic-php.jpg)

>

> Caso esteja utilizando o Ubuntu 11.04 (Natty), é agora que precisamos fazer um rapido ajuste. Vá para Settings -> Repositories e clique em Editar no repositório que adicionamos. Agora troque a palavra "natty" por "maverick". Depois de fechar, dê um apt-get update.

>

> ![Synaptic-repo](/wp-content/uploads/2012/01/synaptic-repo-version.jpg)

>

> Se, como eu, não conseguiu ver as versões 5.2.17 do PHP, olhe mais de perto... selecione um pacote com prefixo "php5" e clique em "Properties":

>

> ![PHP Versions](/wp-content/uploads/2012/01/synaptic-php-versions.jpg)

>

> Beleza, então o pacote correto está aí, mas por algum motivo o Synaptic não quer instalá-lo... a solução é forçá-lo a instalar esta versão: selecione o item e clique no menu "Package -> Force Version".

>

> ![PHP force version](/wp-content/uploads/2012/01/synaptic-php-force.jpg)

>

> Beleza, agora o Synaptic aceita instalar a versão que queremos, a 5.2.17! Agora só falta um passo importante: bloquear a versão para que ela não seja atualizada automaticamente para a 5.3. Após instalar cada item, clique no menu "Package -> Lock Version".

>

> ![PHP locked](/wp-content/uploads/2012/01/synaptic-php-locked.jpg)

>

> Conclusão

>

> Pronto! Até que é fácil né? Para evitar problemas, instale os pacotes nesta ordem: "libapache2-mod-php5", "php5-common", "php5-cli" e depois o resto.

>

> Espero que tenha ajudado!

Ajudou sim! E muito no meu caso! 😉
