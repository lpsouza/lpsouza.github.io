---
author: lpsouza
category: Linux
date: 2009-08-25 10:11:40+00:00
layout: post
published: true
tags:
- Bebê
- Fica a dica
- Hardware
- Linux
- PC
- Shellscript
- Software
- Tarefas
title: baby_rocker.sh
---

Bom pessoal, não resisti.. Foi obrigado a colocar esse script animal aqui no meu blog e compartilhar com o mundo!

Não fui eu que inventei, apenas to repassando um opensource e incluindo minhas melhorias e comentários.

Antes de mais nada, ingredientes de hardware e software:

1. Linux (o sabor que acha mais gostoso)
2. PC compatível com linux
3. Unidade de CD/DVD
4. Barbante
5. Berço
6. Bebê(?)

Como fazer:

Insira em seu Linux o código a seguir:

```bash
#!/bin/sh

# pra quem não entendeu, é um laço (loop) infinito
while [ 1 = 1 ]
do
    # abre o cdrom
    eject
    # fecha o cdrom
    eject -t
    # porque seria divertido uma mensagem
    clear
    echo "Executando baby_rocker.. Ctrl+C para parar.."
done
```

Agora ligue todo o "hardware" conforme o [video](http://www.youtube.com/watch?v=bYcF_xX2DE8).

E não é que funciona? Agradeço ao [@jpermel](http://twitter.com/jpermel) pelo video!

Publicado pelo Wordmobi