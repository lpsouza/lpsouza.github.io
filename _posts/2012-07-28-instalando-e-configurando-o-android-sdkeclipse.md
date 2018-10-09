---
id: 1078
title: Instalando e configurando o Android SDK+Eclipse
date: 2012-07-28T11:56:51+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=1078
permalink: /2012/07/28/instalando-e-configurando-o-android-sdkeclipse/
headerImage: false
star: false
category: blog
categories:
  - Móvel
  - Programação
  - TIC
tags:
  - Android
  - CSS
  - Desenvolvimentos
  - Eclipse
  - Fica a dica
  - HTML
  - IDE
  - Java
  - JS
  - NetBeans
  - PHP
  - Plataforma
  - SDK
---
<p style="text-align: center">
  <a href="http://www.androidbrasilprojetos.org/tutoriais/instalando-e-configurando-o-android-sdkeclipse/"><img src="wp-content/upload/2012/07/eclipse-android.png" alt="" /></a>
</p>

Sou usuário de NetBeans a um tempo já para meus projetos em PHP e seus amigos HTML, CSS e JS. Depois de muito apanhar para colocar o desenvolvimento para Android para funcionar nele, resolvi pensar em mudar de plataforma IDE. Então veio em minhas pesquisas que o melhor IDE para desenvolver para Android era o Eclipse (até porque o plugin dele é mantido pelo pessoal do Google). Mas logo pensei: Tá, mas será que preciso ser tão radical e mudar meu uso do NetBeans totalmente para Eclipse?? A resposta veio em um post chamado <a title="Eclipse vs NetBeans IDE for php, css, html, javascript" href="http://mahmudahsan.wordpress.com/2009/01/25/eclipse-vs-netbeans-ide-for-php/" target="_blank">Eclipse vs NetBeans IDE for php, css, html, javascript</a>, onde claramente se mostra a superioridade do NetBeans para o desenvolvimento em plataforma Web.

Mas ainda quero desenvolver para Android, então vamos instalar o Eclipse pra isso, peguei esse tutorial (com o mesmo título) na internet e o link se encontra no final do post.

> A primeira coisa a fazer e saber se você possui uma Maquina Virtual Java instalada, para saber digite o Prompt de comando do windows Iniciar >> Executar >> digite “cmd” e aperte Enter a seguinte linha.java -version
> 
> Aparecera a versão do Java instalado em sua maquina, se não tiver pode ser baixado nesse site:http://www.oracle.com/technetwork/java/javase/downloads/index.htmlO procedimento de instalação é simples e intuitivo, basta ir clicando em “Next”.
> 
> Agora é a hora de fazer o download e instalar o Eclipse e o Android SDK!!!
> 
> Eclipse : <a title="http://www.eclipse.org/downloads/" href="http://www.eclipse.org/downloads/" target="_blank">http://www.eclipse.org/downloads/</a>
> 
> SDK Android : <a title="http://developer.android.com/sdk/index.html" href="http://developer.android.com/sdk/index.html" target="_blank">http://developer.android.com/sdk/index.html</a>
> 
> Depois de baixados e extraídos execute o SDK Setup, ao executa-lo, ele ira atualizar, caso apareça algum erro, basta marcar a opção “Force https://…source to be fetched using http//…” no menu Setting…
> 
> Depois da atualização vá no menu Avaliable Packages e marque tudo eu recomendo instalar todas as versões mais se quiser instalar apenas uma fique a vontade e aperte Install Selected, na tela que aparecer selecione Accept All e aperte em Install, a instalação é meio demorada, mas é normal…
> 
> Depois da instalação do SDK, e hora de instalar o Eclipse+Plugin ADT, execute o Eclipse e vá no menu Help >>> Install New Softwar e>>> Add >>> Location e cole a url:
> 
> <a title="http://dl-ssl.google.com/android/eclipse/" href="http://dl-ssl.google.com/android/eclipse/" target="_blank">http://dl-ssl.google.com/android/eclipse/</a>
> 
> Marque “Developer tools” e dê “Next” >>> “Finish”. Apos isso ocorrera alguns processos de instalação, Reinicie o Eclipse e pronto.caso apareça alguma mensagem de “OK” e “Yes” Depois de ter reiniciado o Eclipse, vá no menu Windows >>> Preferences >>> Android >>> SDK location e selecione a pasta que se encontra o Android SDK, de “Apply” e “OK”.
> 
> Para finalizar vamos criar um AVD, voltando ao Android SDK e vá no menu Virtual Devices >>> New >>> dê um nome >>> em Target selecione a versão do Android, em “Size” coloque quanto quiser não há necessidade de muito, 256MB tá de bom tamanho >>>Create AVD.
> 
> Pronto o Eclipse e o Android SDK já estão configurados.

E era isso! Mais uma dica que salvou meu dia!

via [Instalando e configurando o Android SDK+Eclipse | Android Brasil Projetos](http://www.androidbrasilprojetos.org/tutoriais/instalando-e-configurando-o-android-sdkeclipse/).