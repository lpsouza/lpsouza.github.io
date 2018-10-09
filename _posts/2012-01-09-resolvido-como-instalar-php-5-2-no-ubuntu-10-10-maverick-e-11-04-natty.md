---
id: 841
title: '[Resolvido] Como instalar PHP 5.2 no Ubuntu 10.10 (Maverick) e 11.04 (Natty)'
date: 2012-01-09T09:30:07+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=841
permalink: /2012/01/09/resolvido-como-instalar-php-5-2-no-ubuntu-10-10-maverick-e-11-04-natty/
aktt_notify_twitter:
  - 'yes'
aktt_tweeted:
  - "1"
headerImage: false
star: false
category: blog
categories:
  - Linux
  - Programação
  - TIC
  - WWW
tags:
  - Downgrade
  - Fica a dica
  - Linux
  - PHP
  - Server
  - Ubuntu
  - Upgrade
  - Versão
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
> [<img src="wp-content/upload/2012/01/synaptic-php.jpg" alt="" width="500" height="150" />](wp-content/upload/2012/01/synaptic-php.jpg)
> 
> Caso esteja utilizando o Ubuntu 11.04 (Natty), é agora que precisamos fazer um rapido ajuste. Vá para Settings -> Repositories e clique em Editar no repositório que adicionamos. Agora troque a palavra "natty" por "maverick". Depois de fechar, dê um apt-get update.
> 
> [<img src="http://luizsouza.com.br/wp-content/uploads/2012/01/synaptic-repo-version.jpg" alt="" width="419" height="389" />](http://www.alexweber.com.br/tutoriais/como-instalar-php-52-ubuntu-1010-maverick-1104-natty)
> 
> Se, como eu, não conseguiu ver as versões 5.2.17 do PHP, olhe mais de perto... selecione um pacote com prefixo "php5" e clique em "Properties":
> 
> [<img src="wp-content/upload/2012/01/synaptic-php-versions.jpg" alt="" width="382" height="352" />](http://www.alexweber.com.br/tutoriais/como-instalar-php-52-ubuntu-1010-maverick-1104-natty)
> 
> Beleza, então o pacote correto está aí, mas por algum motivo o Synaptic não quer instalá-lo... a solução é forçá-lo a instalar esta versão: selecione o item e clique no menu "Package -> Force Version".
> 
> [<img src="wp-content/upload/2012/01/synaptic-php-force.jpg" alt="" width="392" height="181" />](http://www.alexweber.com.br/tutoriais/como-instalar-php-52-ubuntu-1010-maverick-1104-natty)
> 
> Beleza, agora o Synaptic aceita instalar a versão que queremos, a 5.2.17! Agora só falta um passo importante: bloquear a versão para que ela não seja atualizada automaticamente para a 5.3. Após instalar cada item, clique no menu "Package -> Lock Version".
> 
> [<img src="wp-content/upload/2012/01/synaptic-php-locked.jpg" alt="" width="500" height="100" />](http://www.alexweber.com.br/tutoriais/como-instalar-php-52-ubuntu-1010-maverick-1104-natty)
> 
> Conclusão
> 
> Pronto! Até que é fácil né? Para evitar problemas, instale os pacotes nesta ordem: "libapache2-mod-php5", "php5-common", "php5-cli" e depois o resto.
> 
> Espero que tenha ajudado!

Ajudou sim! E muito no meu caso! 😉

via [Como instalar PHP 5.2 no Ubuntu 10.10 (Maverick) e 11.04 (Natty) | Tutoriais | Alex Weber](http://www.alexweber.com.br/tutoriais/como-instalar-php-52-ubuntu-1010-maverick-1104-natty).