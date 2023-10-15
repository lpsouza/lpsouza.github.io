---
author:
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
category: Tech
date: 2022-05-27 02:28:00+00:00
image: https://luizsouza.com/assets/notion-gerenciador.png
last_modified_at: 2023-10-15 01:01:20.314527-03:00
layout: post
notion_id: ddd30f6f-f17f-4484-86dc-61c4ac8f69ad
published: true
tags:
- blog
- jekyll
- notion
- github
- docker
- docker-hub
title: Usando o Notion como gerenciador de conteúdo em Jekyll
---

Desde o momento que [migrei meu blog do Wordpress para Jekyll](https://luizsouza.com/2018/10/11/larguei-o-wordpress/), eu vi a beleza que era poder ter um blog muito mais leve, pois o Jekyll usa o conceito de páginas estáticas, geradas por um servidor antes de colocar no ar, ou trocando em miúdos, o visitante acessa uma página estática, imutável, sem o pré-processamento do PHP ou queries sendo rodadas em um MySQL da vida.

Mas ao mesmo tempo que vi esta beleza, eu sabia dos desafios, pois a página se resume a um [repositório no GitHub e com um monte de arquivos em formato markdown](https://github.com/lpsouza/lpsouza.github.io/tree/main/_posts) que tem a vantagem de ser um “arquivo texto” que se transforma em HTML graças ao poder do Jekyll. Isto quer dizer que não tenho um bom editor WYSIWYG (What You See Is What You Get, ou O que você vê é o que você tem), ou para leigos, o editor que o Wordpress te fornece.

![Editor WYSIWYG clássico do Wordpress.](https://luizsouza.com/assets/wordpress-editor.png)

<span class="caption">Editor WYSIWYG clássico do Wordpress.</span>

No início a falta deste tipo de editor não me fez falta alguma. Ao contrário, eu me sentia mais livre escrevendo sem ele. Mas com o tempo comecei a sentir falta de facilidades simples, como um corretor ortográfico, ou simplesmente a liberdade de escrever e criar um link ou mudar a formatação de maneira mais visual. Então começou o caminho quase inverso: Buscar uma forma de escrever em markdown mas com facilidades que os editores WYSIWYG poderiam me proporcionar. Agora, se alguém que conhece o Wordpress estiver lendo isso vai rir e pensar “mas como assim? o Wordpress já tem o suporte de permitir a escrita em markdown nativa a algumas versões já”. E sim, quem pensou isso está absolutamente correto! Mas não foi este o motivo principal da minha troca, isso eu explico [no meu post sobre porque larguei o Wordpress](https://luizsouza.com/2018/10/11/larguei-o-wordpress/), mas resumindo? Performance.

Então nesta busca por algum editor WYSIWYG para meu blog escrito em markdown com Jekyll eu passei por [algumas ideias chegando no tal do Prose.io](https://luizsouza.com/2020/07/12/criando-posts-para-jekyll-usando-o-prose-io/), ideia bem promissora e que até que funciona! Mas tem um probleminha: Em um navegador é muito bom, mas quando penso em escrever ou editar em outros dispositivos (celular?) o negócio fica complicado! Fora que outra coisa que com o tempo eu fui verificando a falta era de coisas simples como uma agenda para marcar e publicar um post agendado (coisas que no Wordpress é mágico).

E eis que conversando com colegas de trabalho eu conheci o Notion, um organizador de ideias, planner e etc. Aí tive uma ideia onde no início pareceu muito boa, mas que no andamento acabou se tornando mais complicada do que imaginei: Escrever e organizar os posts no Notion e depois “copiar e colar” no [Prose.io](http://Prose.io) (ou ainda direto no repositório em markdown). Com isso conseguia ter uma agenda de publicação e uma forma visual de escrever os posts. Tá, mas porque isso se tornou complicado, você se pergunta?!?? Imagina que, mesmo exportando o post do Notion para um arquivo formato markdown, havia muitos pontos que eu precisava adequar para a tal da compatibilidade entre o Jekyll e o Notion. A pior delas era o FrontMatter, um trecho no início do arquivo markdown que o Jekyll usa como uma espécie de metadado, dando informações para que ele gere a página corretamente. Como seria bom se eu pudesse unir esses dois mundos… pois bem, eu uni! 😉

Tudo começou quando em minhas pesquisas eu encontrei [esse projeto](https://github.com/jamie-lord/NotionToJekyll) do usuário do Github [Jamie Lord](https://github.com/jamie-lord), onde ele usando .NET ele criou um programa que fazia esse meio de campo entre o Notion e o Jekyll. Exatamente o que eu queria… tá, não exatamente, senão usaria este projeto. Mas foi a inspiração, e com minhas particularidades eu criei o projeto [jekyll-notion-sync](https://github.com/lpsouza/jekyll-notion-sync) em NodeJS (escrito em TypeScript), que basicamente sincroniza posts novos no Jekyll (repositórios do Github apenas) e um banco de dados do Notion!

Este projeto tem a premissa de:

- Pegar os posts no Jekyll e criar eles no Notion

- Pegar os posts no Notion e criar ou atualizar ele no Jekyll

![Projeto jekyll-notion-sync rodando em modo de desenvoldimento.](https://luizsouza.com/assets/jekyll-notion-sync.png)

<span class="caption">Projeto jekyll-notion-sync rodando em modo de desenvolvimento.</span>

Simples não? Bem, mais ou menos! Além disso temos os dois mundos para fazer conversar, isto é um texto em RichText (como o Notion usa para ser WYSIWYG) precisa converter e virar um arquivo markdown no repositório do Jekyll e vice e versa! Outra questão era o FrontMatter do Jekyll, que precisaria ser atualizado entre ele e o Notion! Quanto a primeira questão foi um trabalhão, mas nada que muito estudo e paciência (famoso tentativas e erros) não ajudem. Fora que tanto a [API do Github](https://docs.github.com/en/rest), quanto a [API do Notion](https://developers.notion.com/) são super bem documentadas e possuem client para NodeJS! A segunda questão foi uma questão de analisar a ideia do Notion sobre o que seriam as propriedades do banco de dados e fazer isso ser os valores do FrontMatter!

![Exemplo das propriedades no meu Notion que se transformam no FrontMatter no Jekyll.](https://luizsouza.com/assets/propriedades-notion.png)

<span class="caption">Exemplo das propriedades no meu Notion que se transformam no FrontMatter no Jekyll.</span>

Mais uma coisa deste projeto que eu queria que ele fizesse era ser [uma imagem no Docker](https://hub.docker.com/r/lpsouza/jekyll-notion-sync) para uso em automações. E aí está! Inclusive inaugurado com este post! Se você gosta de conteúdos em Jekyll, vale a pena conhecer (e porque não contribuir) com esse projeto!
