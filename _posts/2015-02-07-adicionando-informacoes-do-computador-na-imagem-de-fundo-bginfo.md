---
id: 1366
title: 'Adicionando informações do computador na imagem de fundo &#8211; BGInfo'
date: 2015-02-07T14:44:14+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1366
permalink: /2015/02/07/adicionando-informacoes-do-computador-na-imagem-de-fundo-bginfo/
headerImage: false
star: false
category: blog
categories:
  - TIC
tags:
  - BGInfo
  - Desktop
  - Fica a dica
  - Informações
  - Informática
  - Sistema Operacional
  - Sysinternals
  - Tecnologia
  - TI
  - Windows
  - Windows Sysinternals
---
Desde que entrei para o mundo do Cloud, uma coisa que sempre encontro em servidores de Infraestrutura como Serviço (IaaS), é as informações do servidor em questão no desktop (claro que estou comentando de ambientes Windows Server, e não de Linux e seus amigos).

Achava curioso e sempre pensei em fazer isso nos meus servidores virtualizados no meu computador pessoal, mas era aquele tipo de curiosidade que não estava nas minhas pautas diárias (o famoso vai pra fila dos &#8220;um dia desses eu vejo isso&#8221;).<!--more-->

Eis que acabei esbarrando em um site da Microsoft que mostra como fazer! Tudo que é necessário é do aplicativo <a title="BGInfo" href="https://technet.microsoft.com/en-us/sysinternals/bb897557.aspx" target="_blank">BGInfo</a>, aplicativo do Windows Sysinternals.

[<img class="aligncenter size-full wp-image-1367" src="http://ihcenter.com.br/luizsouza/files/2015/02/bginfo2.png" alt="BGInfo - Tela" width="860" height="633" srcset="https://luizsouza.com.br/wp-content/uploads/2015/02/bginfo2.png 860w, https://luizsouza.com.br/wp-content/uploads/2015/02/bginfo2-300x221.png 300w, https://luizsouza.com.br/wp-content/uploads/2015/02/bginfo2-768x565.png 768w" sizes="(max-width: 860px) 100vw, 860px" />](http://ihcenter.com.br/luizsouza/files/2015/02/bginfo2.png)Executando ele pela primeira vez, será apresentado a tela acima, basta escolher o que quer que apareça e clique em Apply para aplicar no computador ou ir em File > Save As&#8230; para salvar em arquivo a configuração.

Se optou por salvar, você pode criar um agendador de tarefas que em determinado tempo ou ação do computador rode a seguinte linha de comando:

BGInfo.exe Arquivo.bgi /TIMER:0

Pronto! Servidores e até estações de trabalho atualizadas para quando você fizer acesso remoto, poder verificar as suas configurações de maneira bem praticas!

[<img class="aligncenter wp-image-1369 size-full" src="http://ihcenter.com.br/luizsouza/files/2015/02/bginfo1.png" alt="Desktop com BGInfo" width="800" height="450" srcset="https://luizsouza.com.br/wp-content/uploads/2015/02/bginfo1.png 800w, https://luizsouza.com.br/wp-content/uploads/2015/02/bginfo1-300x169.png 300w, https://luizsouza.com.br/wp-content/uploads/2015/02/bginfo1-768x432.png 768w" sizes="(max-width: 800px) 100vw, 800px" />](http://ihcenter.com.br/luizsouza/files/2015/02/bginfo1.png)Meu desktop com as informações do BGInfo! 🙂

&nbsp;

&nbsp;