---
author:
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
category: Tech
date: 2015-02-07 14:44:00+00:00
image: null
last_modified_at: 2023-10-15 01:01:20.296714-03:00
layout: post
notion_id: 10f53e09-aa52-4e09-abed-ef4857e1126a
published: true
tags:
- bginfo
- desktop
- fica-a-dica
- informações
- informática
- sistema-operacional
- sysinternals
- tecnologia
- ti
- windows
- windows-sysinternals
title: Adicionando informações do computador na imagem de fundo - BGInfo
---

Desde que entrei para o mundo do Cloud, uma coisa que sempre encontro em servidores de Infraestrutura como Serviço (IaaS), é as informações do servidor em questão no desktop (claro que estou comentando de ambientes Windows Server, e não de Linux e seus amigos).

Achava curioso e sempre pensei em fazer isso nos meus servidores virtualizados no meu computador pessoal, mas era aquele tipo de curiosidade que não estava nas minhas pautas diárias (o famoso vai pra fila dos "um dia desses eu vejo isso").

Eis que acabei esbarrando em um site da Microsoft que mostra como fazer! Tudo que é necessário é do aplicativo <a title="BGInfo" href="https://technet.microsoft.com/en-us/sysinternals/bb897557.aspx" target="_blank">BGInfo</a>, aplicativo do Windows Sysinternals.

![BGInfo](/wp-content/uploads/2015/02/bginfo2.png)

Executando ele pela primeira vez, será apresentado a tela acima, basta escolher o que quer que apareça e clique em Apply para aplicar no computador ou ir em File > Save As... para salvar em arquivo a configuração.

Se optou por salvar, você pode criar um agendador de tarefas que em determinado tempo ou ação do computador rode a seguinte linha de comando:

BGInfo.exe Arquivo.bgi /TIMER:0

Pronto! Servidores e até estações de trabalho atualizadas para quando você fizer acesso remoto, poder verificar as suas configurações de maneira bem praticas!

[Desktop com BGInfo](/wp-content/uploads/2015/02/bginfo1.png)

Meu desktop com as informações do BGInfo! 🙂
