---
author: lpsouza
category: blog
date: 2011-04-03 17:26:18+00:00
layout: post
published: true
tags:
- '2003'
- '2008'
- attrib
- Microsoft
- Problema
- Recuperar formato
- Servidor
- Virus
- Windows
- Windows Server
title: 'Para servidores: Como recuperar uma pasta que se tornou oculta por causa de
  vírus [Resolvido]'
---

Este foi um problema que me assolou por causa dos vírus de pendrive que aparecem pelo colégio onde trabalho. Simplesmente quando colocava um pendrive infectado, ele colocava pastas ocultas com o nome de DOBRERIBE e instalava um arquivo infectado dentro. E pra piorar, alterava os atributos da pasta compartilhada, deixando ela oculta e como “pasta de sistema”, provavelmente para explorar alguma falha do sistema operacional referente a tal.

Enfim, tentei de tudo quanto foi maneira recuperar a pasta em seu estado original e nada. Tive que por um tempo conviver com isso, até que comecei a perceber que as pastas de backup que meu software de copia fazia, copiava os atributos e então, sempre ficando invisível e como sistema igual, mesmo sem o vírus.

Ok, isso até hoje, quando achei um artigo interessante que descrevia como resolver o problema, e então compartilho com vocês agora! 🙂

> hey try this. i am sure your problem will be solved. I too have tried this.........
>
> start->Run->cmd
>
> `attrib -h -r -s /s /d h:\*.\*`
>
> best of luck

Onde o “h:\*.\*” é o caminho onde a pasta se encontra. No meu caso, como eram pastas internas, eu dei um “cd *caminho*” e depois apenas coloquei no comando do *attrib* o “\*.\*”.

Fácil não?

via [Hidden folders in pen drive-because of virus [Solved/Closed]](http://en.kioskea.net/forum/affich-220814-hidden-folders-in-pen-drive-because-of-virus)