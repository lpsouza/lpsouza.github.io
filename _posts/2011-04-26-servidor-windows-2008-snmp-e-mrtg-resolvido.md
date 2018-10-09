---
id: 721
title: 'Servidor Windows 2008: SNMP e MRTG [Resolvido]'
date: 2011-04-26T19:11:58+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=721
permalink: /2011/04/26/servidor-windows-2008-snmp-e-mrtg-resolvido/
aktt_tweeted:
  - "1"
  - "1"
aktt_notify_twitter:
  - 'yes'
  - 'yes'
headerImage: false
star: false
category: blog
categories:
  - TIC
tags:
  - "2008"
  - Computadores
  - MRTG
  - Tráfego
  - Windows
  - Windows Server
---
Desde sempre usei em meus servidores linux e roteadores o <a href="http://pt.wikipedia.org/wiki/Multi_Router_Traffic_Grapher" target="_blank">MRTG</a> para controlar a quantidade de banda internet que estava consumindo. Isso é importantissimo para o controle de qualquer gargalo de rede, prever os momentos de pico do uso dos recursos de rede, etc.

Pois bem, hoje me coloquei um desafio que pensei nunca precisar: Usar o MRTG no Windows! E até que não doeu e nem arrancou pedaço! Hehe..

Bom, primeiro eu fui no velho e bom amigo Google e pesquisei sobre o uso do MRTG e do SNMP no Windows, e achei duas coisas interressantes. Um artigo no Viva o Linux chamado “<a href="http://www.vivaolinux.com.br/artigo/Instalacao-de-MRTG-em-ambiente-Windows/" target="_blank">Instalação de MRTG em ambiente Windows</a>” e como nunca tinha visto o SNMP em um servidor Windows, um help basico na microsoft “<a href="http://technet.microsoft.com/en-us/library/bb726987.aspx" target="_blank">TCP/IP Fundamentals for Microsoft Windows: Appendix B - Simple Network Management Protocol</a>”.

Bom, acabei seguindo o tutorial do Viva o Linux e acabei percebendo que a instalação do Perl e do MRTG era mais faceis que o proprio tutorial indicava. Por exemplo, a instalação do Perl é via MSI, o que fez uns poucos clicks e tudo ficar funcionando. Logo depois, o MRTG é descompactar e usar!

Segundo passo que dei foi habilitar e configurar o SNMP conforme li no help do Windows e por fim, usei o comando:

perl cfgmaker public@localhost -global "WorkDir: c:mrtg" -output mrtg.cfg

Depois o comando:

perl indexmaker mrtg.cfg > C:wwwindex.html

E por fim:

perl mrtg mrtg.cfg

De inicio, o sistema apresenta alguns “warning”, mas sem problemas isso é porque nunca foi executado o comando.

Tá, mas e como o c:www vira uma pasta no IIS? Primeiro verifique e instale o IIS (meio lógico, mas pense que alguns vão esquecer de ver isso <img class="wlEmoticon wlEmoticon-smilewithtongueout" style="border-style: none" src="http://luizsouza.com.br/wp-content/uploads/writer/a1cd4e48828d_ED11/wlEmoticon-smilewithtongueout.png" alt="Smiley mostrando a língua" />), depois disto é só adicionar um diretório virtual no “default site” (no meu caso chamei de mrtg) e apontar para o diretório.

Faltou alguma coisa? Hum… Ah sim! Seguindo a idéia do tutorial, coloquei como RunAsDaemon!

E era isso! MRTG no Windows sem muito esforço!