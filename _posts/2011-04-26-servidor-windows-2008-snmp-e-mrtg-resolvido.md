---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2011-04-26 16:11:00-03:00
image: null
last_modified_at: 2023-10-15 01:01:20.264142-03:00
layout: post
published: true
tags:
- '2008'
- computadores
- mrtg
- tráfego
- windows
- windows-server
title: 'Servidor Windows 2008: SNMP e MRTG [Resolvido]'
---

Desde sempre usei em meus servidores linux e roteadores o [MRTG](http://pt.wikipedia.org/wiki/Multi_Router_Traffic_Grapher) para controlar a quantidade de banda internet que estava consumindo. Isso é importantíssimo para o controle de qualquer gargalo de rede, prever os momentos de pico do uso dos recursos de rede, etc.

Pois bem, hoje me coloquei um desafio que pensei nunca precisar: Usar o MRTG no Windows! E até que não doeu e nem arrancou pedaço! Hehe..

Bom, primeiro eu fui no velho e bom amigo Google e pesquisei sobre o uso do MRTG e do SNMP no Windows, e achei duas coisas interessantes. Um artigo no Viva o Linux chamado “[Instalação de MRTG em ambiente Windows](http://www.vivaolinux.com.br/artigo/Instalacao-de-MRTG-em-ambiente-Windows/)” e como nunca tinha visto o SNMP em um servidor Windows, um help basico na microsoft “[TCP/IP Fundamentals for Microsoft Windows: Appendix B - Simple Network Management Protocol](http://technet.microsoft.com/en-us/library/bb726987.aspx)”.

Bom, acabei seguindo o tutorial do Viva o Linux e acabei percebendo que a instalação do Perl e do MRTG era mais fáceis que o próprio tutorial indicava. Por exemplo, a instalação do Perl é via MSI, o que fez uns poucos clicks e tudo ficar funcionando. Logo depois, o MRTG é descompactar e usar!

Segundo passo que dei foi habilitar e configurar o SNMP conforme li no help do Windows e por fim, usei o comando:

`perl cfgmaker public@localhost -global "WorkDir: c:mrtg" -output mrtg.cfg`

Depois o comando:

`perl indexmaker mrtg.cfg > C:wwwindex.html`

E por fim:

`perl mrtg mrtg.cfg`

De inicio, o sistema apresenta alguns “warning”, mas sem problemas isso é porque nunca foi executado o comando.

Tá, mas e como o c:\www vira uma pasta no IIS? Primeiro verifique e instale o IIS (meio lógico, mas pense que alguns vão esquecer de ver isso 😜), depois disto é só adicionar um diretório virtual no “default site” (no meu caso chamei de mrtg) e apontar para o diretório.

Faltou alguma coisa? Hum… Ah sim! Seguindo a idéia do tutorial, coloquei como RunAsDaemon!

E era isso! MRTG no Windows sem muito esforço!
