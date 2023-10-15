---
author:
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
category: Tech
date: 2012-05-14 06:30:00-03:00
image: null
last_modified_at: 2023-10-15 01:01:20.275705-03:00
layout: post
notion_id: 4e804ac7-02ae-4989-ae31-6cc57153a456
published: true
tags:
- configurações
- fica-a-dica
- linux
- login
- tweak
- ubuntu
title: Ubuntu-Tweak
---

Desde a atualização do meu Ubuntu para o 12.04 eu perdi a barbada de mexer na minha tela de login (remover pontos do fundo, mudar o fundo, desligar o som, etc). Antes da 12.04 usava um script maneiro criado pelo Cláudio Novais (Ubuntued), o [Simple LightDM](http://ubuntued.info/simple-lightdm-manager-altere-o-login-do-novo-ubuntu). Em alguns minutos pesquisando na internet, achei um artigo no site Ask Ubuntu, o [How do I install Ubuntu-Tweak?](http://askubuntu.com/questions/75454/how-do-i-install-ubuntu-tweak), e vi que ele pode acessar as informações do login e desabilitar som, mudar logo, etc...

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

* etc...

Lembro que peguei essas informações no site oficial: [http://ubuntu-tweak.com](http://ubuntu-tweak.com)

![Ubuntu](/wp-content/uploads/2012/05/JpVyu.png)

Sendo assim, vamos a receita de bolo:

  1. Vá no terminal e digite:  

  `sudo add-apt-repository ppa:tualatrix/ppa && sudo apt-get update`

  2. Depois instalar:  

  `sudo apt-get install ubuntu-tweak`
