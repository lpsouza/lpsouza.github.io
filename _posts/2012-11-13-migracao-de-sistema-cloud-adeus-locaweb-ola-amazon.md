---
author:
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
category: Tech
date: 2012-11-13 21:55:00-02:00
image: null
last_modified_at: 2022-12-19 17:47:00-03:00
layout: post
published: true
tags:
- amazon
- aws
- cloud
- comparativo
- computação
- computing
- instância
- linux
- locaweb
- núvens
- services
- web
title: Migração de sistema Cloud (Adeus Locaweb, olá Amazon)
---

Desde o dia 2 de Novembro, estive migrando os meus clientes da IHCenter do servidor (em cloud) que tinha na Locaweb, para a Amazon Web Services (AWS). Depois de uma semana e meia, mudei todos os clientes (incluindo, claro, o meu blog). Mas, o que levou a esta mudança?

Tudo começou quando o meu servidor começou a apresentar problemas de indisponibilidades malucas, onde do nada o a memória "acabava" e ele simplesmente travava (claro, sem memória para usar, como ele vai continuar?). Ok, todos falavam que o problema nas configurações dos meus daemons, mas eu já tinha optimizado e muito o uso do servidor. Enfim, fui "convivendo" com essa pulga atrás da orelha, uma vez que levava um tempo para isso acontecer.

Passou um tempo, e li sobre a Amazon Web Services, e até li um comparativo no blog da Locaweb, que me fez "esquecer" o assunto, pois "Amazon é mau e Locaweb é o melhor pro mercado brasileiro" (ahuahauhauah ai ai), então continuei com eles por mais um tempo. Até a conversa com meu professor de Roteamento, na Unisinos, que me falou tri bem da Amazon. Fiquei com a pulga atrás da orelha. Pesquisei um pouco e vi que alguns clientes da Locaweb haviam migrado para a Amazon e aparentemente falando de melhora em performance. Eis que aí fui ver uma instância lá na AWS.

Começou com o tempo que precisei esperar para a instância esta operacional. Do inicio do meu cadastro, a entrar na console da AWS, olhar como se faz a instância e efetivamente logo no SSH do servidor, foi seus 30 minutos. Deste tempo todo, 2,5 minutos foi o que levei para criar e logar no SSH. Ok, criar novas instâncias também é rápido, e sem precisar falar com ninguém. Legal! Agora, e a performance? Então migrei um dos meus sites que tinha no servidor da Locaweb, e aí sim veio a confirmação que estava fazendo um bom negócio! Melhora no acesso em 50~60%! Então lá fui eu migrar todos os clientes!

Hoje, no meio da manhã, terminei meu último backup de segurança da instância da Locaweb e mandei encerrar ela. Ainda levou mais tempo para encerrar a instância do que para criar uma na AWS. Parece brincadeira, mas não é! Sinceramente, sabe o que parece? Parece que deixei de ser criança no mundo de sistemas em Cloud Computing e entrei pra brincar com brinquedos de gente grande! Ahahaha...

E paramos por aqui? Não! Hoje estou já com 2 instâncias na AWS, uma para os serviços web e outra só para o banco de dados! E a IHCenter, vai mudar completamente a forma de cobrar e trabalhar com hospedagens e sistemas (SaaS) que eu coordeno e desenvolvo! Bora voltar para o trabalho! 😉
