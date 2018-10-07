---
id: 897
title: Ubuntu-Tweak
date: 2012-05-14T09:30:24+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=897
permalink: /2012/05/14/ubuntu-tweak/
aktt_notify_twitter:
  - 'yes'
aktt_tweeted:
  - "1"
headerImage: false
star: false
category: blog
categories:
  - Linux
  - TIC
tags:
  - Configurações
  - Fica a dica
  - Linux
  - Login
  - Tweak
  - Ubuntu
---
Desde a atualização do meu Ubuntu para o 12.04 eu perdi a barbada de mexer na minha tela de login (remover pontos do fundo, mudar o fundo, desligar o som, etc). Antes da 12.04 usava um script maneiro criado pelo <a title="Simple LightDM Manager: Altere o login do novo Ubuntu!" href="http://ubuntued.info/simple-lightdm-manager-altere-o-login-do-novo-ubuntu" target="_blank">Cláudio Novais (Ubuntued)</a>, o Simple LightDM. Em alguns minutos pesquisando na internet, achei um artigo no site Ask Ubuntu, o [How do I install Ubuntu-Tweak?](http://askubuntu.com/questions/75454/how-do-i-install-ubuntu-tweak), e vi que ele pode acessar as informações do login e desabilitar som, mudar logo, etc&#8230;

Bom, na realidade dá pra fazer muito mais coisas do que alem do login. Citando algumas:

  * Ver as informações básicas
  * Controle de sessão
  * Controle dos programas que inicializam automaticamente
  * Instalação fácil das aplicações populares
  * Limpeza de pacotes não necessários ou cache para liberar espaço em disco
  * Mostrar/Esconder e Mudar a Splash screen
  * Mostrar/Esconder icones do desktop ou volumes montados
  * Mostrar/Esconder/Renomear icones do Computador, Home, Lixeira ou Rede
  * Diversos efeitos no Compiz
  * Configurações do Nautilus
  * etc&#8230;

Lembro que peguei essas informações no site oficial: <a title="Ubuntu Tweak" href="http://ubuntu-tweak.com" target="_blank">http://ubuntu-tweak.com</a>

<p style="text-align: center">
  <a href="http://askubuntu.com/questions/75454/how-do-i-install-ubuntu-tweak"><img src="http://ihcenter.com.br/luizsouza/files/2012/05/JpVyu.png" alt="" /></a>
</p>

Sendo assim, vamos a receita de bolo:

  1. Vá no terminal e digite:
  
    `sudo add-apt-repository ppa:tualatrix/ppa && sudo apt-get update`
  2. Depois instalar:
  
    `sudo apt-get install ubuntu-tweak`