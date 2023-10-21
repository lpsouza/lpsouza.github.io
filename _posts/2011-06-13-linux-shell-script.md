---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2011-06-13 12:32:00-03:00
image: null
last_modified_at: 2023-10-15 01:01:20.265316-03:00
layout: post
published: true
tags:
- computadores
- fica-a-dica
- linux
- programação
- script
- shell-script
title: 'Linux: Shell Script'
---

Tá aí uma coisa que poucos usuários linux atuais sabem mexer a fundo: Shell Script.

Mas o que é isso exatamente? Shell Script é uma linguagem de scripts (não é considerado uma linguagem de programação) para uso de alguns interpretadores de comandos, usados por diversos sistemas operacionais. Os que mais usam são os GNU/Linux. (leia mais na Wikipédia sobre [ShellScript](http://pt.wikipedia.org/wiki/Shell_script)).

Mas, interpretador de comandos, eu quero dizer o console mesmo! Como muitos usuários linux atuais usam apenas interface gráfica, eles acabam perdendo o melhor do parquinho!

Com essa ferramenta de scripts podemos fazer desde tarefas simples como agendar uma cópia de arquivos (backup?), a até programar diversas ações baseando em tempo ou decisão do usuário. Criar neste tipo de linguagem é também simples, pois não precisamos compilar nada, apenas digitar o nome do arquivo que acabou de criar.

Como é uma linguagem de scripts para interpretadores de comandos, eles precisam conhecer esse tipo de linguagem. O que quero dizer é que não adianta nada querer que o velho DOS ou o CMD (interpretador de comandos do Windows) entenda algo né? Os interpretadores de comandos que entendem são: sh, bash, ksh, tsch, etc.

Um exemplo de script:

```bash

if [ $1 -lt 10 ]; then

    echo "Número menor que 10"

else

    echo "Número igual ou maior que 10"

fi

```

Se quiserem aprender mais, eu deixo uma página interessante que li hoje sobre isso:

[http://www.devin.com.br/shell_script/](http://www.devin.com.br/shell_script/)

Neste link, vocês podem ver um mini curso muito bem explicado de como usar os principais scripts deste poderosa ferramenta!
