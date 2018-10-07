---
id: 1122
title: Migração de sistema Cloud (Adeus Locaweb, olá Amazon)
date: 2012-11-13T23:55:29+00:00
author: lpsouza
layout: post
guid: http://ihcenter.com.br/luizsouza/?p=1122
permalink: /2012/11/13/migracao-de-sistema-cloud-adeus-locaweb-ola-amazon/
headerImage: false
star: false
category: blog
categories:
  - Linux
  - Programação
  - TIC
  - WWW
tags:
  - Amazon
  - AWS
  - Cloud
  - Comparativo
  - Computação
  - Computing
  - Instância
  - Linux
  - Locaweb
  - Núvens
  - Services
  - Web
---
<p style="text-align: justify;">
  <img class="alignleft" title="AWS" alt="" src="http://blog.geoiq.com/files/2011/06/aws-logo-1.jpg" width="240" height="98" />Desde o dia 2 de Novembro, estive migrando os meus clientes da IHCenter do servidor (em cloud) que tinha na Locaweb, para a Amazon Web Services (AWS). Depois de uma semana e meia, mudei todos os clientes (incluindo, claro, o meu blog). Mas, o que levou a esta mudança?<!--more-->
</p>

<p style="text-align: justify;">
  Tudo começou quando o meu servidor começou a apresentar problemas de indisponibilidades malucas, onde do nada o a memória &#8220;acabava&#8221; e ele simplesmente travava (claro, sem memória para usar, como ele vai continuar?). Ok, todos falavam que o problema nas configurações dos meus daemons, mas eu já tinha optimizado e muito o uso do servidor. Enfim, fui &#8220;convivendo&#8221; com essa pulga atrás da orelha, uma vez que levava um tempo para isso acontecer.
</p>

<p style="text-align: justify;">
  <img class="alignright" title="Locaweb" alt="" src="http://webholic.com.br/wp-content/uploads/2010/09/Locaweb-logo-20100811151058.jpg" width="176" height="112" />Passou um tempo, e li sobre a Amazon Web Services, e até li um comparativo no blog da Locaweb, que me fez &#8220;esquecer&#8221; o assunto, pois &#8220;Amazon é mau e Locaweb é o melhor pro mercado brasileiro&#8221; (ahuahauhauah ai ai), então continuei com eles por mais um tempo. Até a conversa com meu professor de Roteamento, na Unisinos, que me falou tri bem da Amazon. Fiquei com a pulga atrás da orelha. Pesquisei um pouco e vi que alguns clientes da Locaweb haviam migrado para a Amazon e aparentemente falando de melhora em performance. Eis que aí fui ver uma instância lá na AWS.
</p>

<p style="text-align: justify;">
  Começou com o tempo que precisei esperar para a instância esta operacional. Do inicio do meu cadastro, a entrar na console da AWS, olhar como se faz a instância e efetivamente logo no SSH do servidor, foi seus 30 minutos. Deste tempo todo, 2,5 minutos foi o que levei para criar e logar no SSH. Ok, criar novas instâncias também é rapido, e sem precisar falar com ninguem. Legal! Agora, e a performance? Então migrei um dos meus sites que tinha no servidor da Locaweb, e aí sim veio a confirmação que estava fazendo um bom negócio! Melhora no acesso em 50~60%! Então lá fui eu migrar todos os clientes!
</p>

<p style="text-align: justify;">
  Hoje, no meio da manhã, terminei meu último backup de segurança da instância da Locaweb e mandei encerrar ela. Ainda levou mais tempo para encerrar a instância do que para criar uma na AWS. Parece brincadeira, mas não é! Sinceramente, sabe o que parece? Parece que deixei de ser criança no mundo de sistemas em Cloud Computing e entrei pra brincar com brinquedos de gente grande! Ahahaha&#8230;
</p>

<p style="text-align: justify;">
  E paramos por aqui? Não! Hoje estou já com 2 instâncias na AWS, uma para os serviços web e outra só para o banco de dados! E a <a title="IHCenter" href="http://ihcenter.com.br" target="_blank">IHCenter</a>, vai mudar completamente a forma de cobrar e trabalhar com hospedagens e sistemas (SaaS) que eu coordeno e desenvolvo! Bora voltar para o trabalho! 😉
</p>