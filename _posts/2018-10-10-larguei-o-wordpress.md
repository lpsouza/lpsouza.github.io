---
author: lpsouza
category: blog
date: 2018-10-10 21:52:00-03:00
layout: post
published: true
tags:
- Wordpress
- Blog
- Migração
- Jekyll
- Static
- Markdown
title: Larguei o Wordpress!
---

Comecei este meu blog em 2009 (Caramba! Ano que vem faz 10 anos já!) com o post [Novo point! Bem vindo a minha página pessoal!](/2009/08/21/novo-point-bem-vindo-a-minha-pagina-pessoal/). Naquela época eu comecei a usar o Wordpress como solução para administrar o blog. Daquela época pra cá, o Wordpress cresceu e se tornou um dos maiores [CMS](https://pt.wikipedia.org/wiki/Sistema_de_gerenciamento_de_conte%C3%BAdo) do mercado e se tornando [o CMS mais usado no mundo e o que detêm mais da metade do market share mundial](https://w3techs.com/technologies/overview/content_management/all).

Naquela época do inicio do blog, já havia reparado no poder da ferramenta e que ela poderia sim facilmente se tornar algo que controlasse não apenas blog como ela mesma comenta em sua definição, mas controlar também sites e mais sites de diversos outros tipos, desde sites institucionais a até [e-commerce](https://woocommerce.com/)! E hoje venho comentar neste post que estou desistindo de usar essa ferramenta poderosa! Mas porque?!??

Bom, não tenho do que reclamar do painel e nem dos plugins e temas! É tudo muito bom e perfeito! O motivo é um pouco mais filosófico-técnico do que de funcionalidades. Deixa explicar melhor: Quando um site usa uma tecnologia de CMS, ele abre um leque de facilidades para o usuário que quer administrar um site e não se preocupar com linguagens como HTML, CSS, JavaScript, PHP e outras tantas que fazem parte da vida dos sites na web. Ele usa tudo isso e entrega algo simples e fácil de administrar, com telas completas e controles que deixa quase qualquer um de queixo caído! Mas para ele fazer tudo isso, há um preço... E um preço BEM alto - A necessidade de servidores com uma configuração mínima "não tão mínima" assim, hehehe.

Isso tem a causa principal o PHP, linguagem de programação amplamente usada na internet e o banco de dados MySQL (ou MariaDB, depende do gosto do freguês, hehehe). Para esta dupla funcionar bem, depende de como tudo foi construído, desde o Wordpress como os plugins e temas (isso os mesmos que disse antes que é perfeito), e então não tão perfeito assim, eles consomem muita memória ou processador do servidor.

Então me peguei pensando: Poxa, este é apenas um blog e uma forma das pessoas me conhecerem melhor. Porque precisa ser "tão pesado"? Lembro que antes do Wordpress e antes destas linguagens tudo que comentei acima (sim, sou anterior a isso), a internet era "mais textual", resumidamente um HTML aqui e ali e uma pitadinha de CSS para dar uma cor aqui e ali. E com isso veio a pergunta: Porque não voltar as origens? O blog ficaria extremamente rápido! E com essa questão, eu resolvi mudar para o [Jekyll](https://jekyllrb.com/). Resumidamente, é um gerador de sites estático. E o que é um site estático?!?? Um site onde o conteúdo não é alterado por linguagens de programação e armazenados em banco de dados. Uma página estática é infinitamente mais rápida do que uma página gerada de "na hora" com a dupla que comentei acima. Houve mais duas coisas que me chamaram a atenção quanto ao Jekyll:

1. Ele usa [Markdown](https://www.markdownguide.org/getting-started), uma linguagem de marcação (como o HTML) muito leve e simples de usar.
1. Podemos criar um repositório com os arquivos do Jekyll no site do [GitHub](https://github.com/) e ele cria um site estático de graça! E com direito a usar o domínio pessoal e SSL (https)!

Faz poucos dias que migrei o site que tinha hospedado na [Umbler](https://app.umbler.com/u/0jrm3d6k) para o GitHub. Estou curtindo muito a mudança!

Ok, quem me conhece e sabe que desenvolvo alguns sites por aí deve estar se perguntando se eu larguei o Wordpress de vez e vou usar o Jekyll nos meus clientes... E a resposta é simples: Não, não vou usar Jekyll e vou continuar a usar o Wordpress para os clientes... E porque?!?? Essa é bem simples: Meus clientes precisam de facilidade, simplicidade e um sistema perfeito de controle! Então será sempre o velho combo: Wordpress hospedado na Umbler (PHP + MySQL)! ;-)

E era isso! See ya!