---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2017-08-11 17:37:00-03:00
image: https://luizsouza.com/assets/2017-08-11-instalando-multiplas-versoes-do-node-js-resolvido/Capturar2.png
last_modified_at: 2023-10-15 01:01:20.306002-03:00
layout: post
published: true
tags:
- fica-a-dica
- install
- installer
- node
- node.js
- nodejs
- npm
- nvm
- programação
- versions
- versões
title: Instalando múltiplas versões do Node.JS [Resolvido]
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
