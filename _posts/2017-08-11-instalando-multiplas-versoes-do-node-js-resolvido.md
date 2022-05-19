---
notion_id: c3082827-033b-4d14-a116-48e1dc6fbbcf
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2017-08-11T20:37:00.000Z
last_modified_at: 2022-05-19T22:05:00.000Z
category: Tech
published: true
title: Instalando múltiplas versões do Node.JS [Resolvido]
tags:
  - Fica a dica
  - Install
  - Installer
  - Node
  - Node.JS
  - NodeJS
  - NPM
  - NVM
  - Programação
  - Versions
  - Versões
image: https://luizsouza.com/wp-content/uploads/2017/08/Capturar2.png
---

Eu nunca sei qual versão do Node.JS usar... A mais recente, onde tenho um monte de implementações novas como chamadas async, ou se uso a versão LTS e mantenho "tudo compatível"... Pois então, esse dilema é parte da minha vida de desenvolvedor em casa, onde sempre que posso uso a versão mais recente, mas quando vou usar algo de terceiro, como um ionic da vida, sempre tenho que desinstalar a versão mais recente e instalar a LTS.

Ok, mas será que não existe um meio mais fácil?!?? Para usuários Linux e Mac, existia o NVM (Node Version Manager), mas nunca funcionou bem no seu port para Windows. Pois bem, parece que agora ele voa! 😀

Como instalar:

  1. Remova qualquer versão do Node previamente instalada no seu computador;

  2. Instale o NVM:

      * Windows: instale [esta versão](https://github.com/coreybutler/nvm-windows/releases);

      * Linux:

          1. Instale o build-essential: `sudo apt-get update; sudo apt-get install build-essential`

          2. Instale o NVM via wget: `wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash`

      * MAC:

          1. Instale o NVM via brew: `brew update; brew install nvm`

  3. É só usar! 😉

Agora é hora de instalar as versões, para isso use o comando: `nvm install <versao-do-node>` e para usar: `nvm use <versao-do-node>.`

E era isso!

Esta solução foi baseada neste dois links abaixo:

* <https://www.sitepoint.com/quick-tip-multiple-versions-node-nvm/>

* <http://dev.topheman.com/install-nvm-with-homebrew-to-use-multiple-versions-of-node-and-iojs-easily/>

