---
layout: post
author: lpsouza
date: '2020-07-12 14:41 -0300'
category: Tech
published: true
tags:
  - Jekyll
  - Prose
  - Prose.io
  - Blog
  - Markdown
title: Criando posts para Jekyll usando o Prose.io
---

A um pouco mais de um ano, publiquei um post onde comentei da minha [mudança do Wordpress para usar o Jekyll](https://luizsouza.com/2018/10/10/larguei-o-wordpress/) e lá apresento minha opinião sobre usar páginas estáticas para manter meu blog, usando arquivos em formato [Markdown](https://daringfireball.net/projects/markdown/). Bom, isso pareceu bem simples e prático, porque posso escrever um post virtualmente com qualquer sistema operacional, mesmo com ou sem interface gráfica ou ainda com ou sem um navegador! 😍

Bom, mas como diria [Joseph Climber](https://www.youtube.com/watch?v=d88x4qZ_zKU), "a vida é uma caixinha de surpresas" e com isso percebi que perdi a vontade de escrever posts no meu blog em Jekyll! E porque?!?? Porque criei uma "dificuldade" em ter que sempre que escrever um post, criar um metadata (exemplo abaixo) com as informações do post. E aí comecei a criar soluções "não elegantes" para isso (lê-se criar um script no meu notebook, outro script em outro computador, esquecer em um terceiro computador, ficar carente no celular, etc). Poxa! Exatamente o que eu queria de praticidade, eu estava criando uma bola de neve! O que fazer?

```yaml
---
layout: blog
author: lpsouza
date: '2020-07-12 14:41 -0300'
category: Blogging
published: false
title: Criando posts para Jekyll usando o Prose.io
---
```

Com isso eu comecei a pesquisar soluções de como "escrever como no Wordpress, para Jekyll" e encontrei diversas soluções (sinceramente muitas pagas) e cheguei a duas soluções: O [Netlify CMS](https://netlifycms.org/) e o [Prose.io](https://prose.io/). Ambas as soluções se apresentam como gratuitas, e esse foi o meu motivador para testar.

Comecei pelo **Netlify CMS**, porque ele apresenta uma instalação "plug'n play" no site em um diretório `/admin/`. Mas o que pareceu fácil me remeteu a uma dor de cabeça, onde comecei a entender que esse projeto utilizava por debaixo dos panos um cara chamado Netlify, que esse sim é um site que gerencia de forma completa sites estáticos e ainda por cima era pago dependendo da solução que eu precisasse. Desisti desta opção!

Depois comecei a ver como funciona o **Prose.io** e reparei que ele é realmente gratuito (yeah), mas precisaria acessar a URL dele, com uma autenticação Oauth com o Github. E a configuração de como eu preciso das tais metadata ficam no meu arquivo de configuração do Jekyll, o `_config.yml`. Aqui coloco como fiz minhas configurações:

```yaml
prose:
    rooturl: "_posts"
    siteurl: "https://luizsouza.com/"
    media: "media"
    metadata:
        _posts:
            - name: "title"
              field:
                  element: "text"
                  label: "title"
            - name: "date"
              field:
                  element: "hidden"
                  value: CURRENT_DATETIME
            - name: "author"
              field:
                  element: "hidden"
                  value: CURRENT_USER
            - name: "layout"
              field:
                  element: "hidden"
                  value: "blog"
            - name: "category"
              field:
                  element: "select"
                  options:
                      - name: "Blogging"
                        value: "Blogging"
                      - name: "Tech"
                        value: "Tech"
                      - name: "Linux"
                        value: "Linux"
                      - name: "Games"
                        value: "Games"
```

Por fim eu fiz este post utilizando o **Prose.io** e curti bastante! Ele é extremamente simples de usar e ainda continuo com a liberdade de produzir posts nele (de maneira facilitada com o uso das metadata) e na forma tradicional utilizando qualquer editor de texto, em qualquer sistema operacional!

E era isso! EOF ✌
