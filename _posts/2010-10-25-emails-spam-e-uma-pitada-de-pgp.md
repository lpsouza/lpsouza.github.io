---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2010-10-25 05:52:00-02:00
image: null
last_modified_at: 2022-12-19 17:45:00-03:00
layout: post
published: true
tags:
- criptografia
- datacenter
- email
- isp
- mail
- marketing
- pgp
- pop3
- smtp
- spam
title: Emails, Spam e uma pitada de PGP!
---

Eu me indigno com algumas piadas que os ISP/DC inventam para dizer que estão combatendo o SPAM, e ao mesmo tempo criando formas agregadas de continuar com o SPAM, com outro nome. Essa semana aconteceu um problema com um dos meus serviços mais antigos a clientes: Relayhost (ou smarthost). Tá, para quem não entende ou para quem não ta familiarizado com o termo, este  é um sistema antigo que era usado na epoca que a internet não era tão simples e nem tão barata, mas as empresas já queriam ter emails corporativos dentro da empresa. Com internet discada mesmo eles podiam ter este serviço corporativo, usando um servidor de emails externo e disponível na internet 24/7 para manter os emails (entrega e recebimento). Para isso bastava o servidor da empresa (aquele que ficava dentro de uma internet “on-demand”), quando se conectava a internet, enviar os emails para este servidor disponível, e receber o que foi enviado a ele enquanto o período offline do servidor da empresa. Para isso usava-se uma mescla de eSMTP e as vezes POP3 (usando-se de um sistema de fetch no lado do cliente).

Ok, então estou dizendo que tinha clientes discados em minha carteira? Não, com o advento da internet banda-larga e o aumento indiscriminado do SPAM, levou os servidores de email a tomarem medidas contra o envio de mensagens, fazendo com que determinados IPs não pudessem mandar email diretamente, ou por número de mensagens/hora. Com isso as ISPs viram um prato cheio para vender serviços de IP fixo, onde eles confiavam a ideia de entrega de mensagens. Mas isso se tornava cada vez mais caro, não sendo realidade para medias empresas. Com isso veio minha ideia, de levar uma entrega de emails confiável na internet. Um servidor disponível, que recebia destes hosts supostamente “não confiáveis” os emails corporativos e entregava as mensagens, caso eles tenham passado por alguma indisponibilidade! Funcionou por muito tempo o serviço, até esses dias, quando por “mudanças nas politicas AntiSPAM”, meu serviço se tornou “foco de SPAM”. Ok, a ideia é parar com os SPAMs, parece ser uma ideia promissora, mas isso abriu novamente outro mercado: o do Email Marketing!

Gente, vamos ser sinceros: Marketing? Isso é a forma charmosa de dizer: Quer mandar SPAM? Mande aqui!! É só nos pagar!! Com isso, os DCs maiores dão soluções para envio de mensagens em massa (SPAM) e os ISPs ganham com seus links milagrosos confiáveis!! Agora acreditem, o mundo dos emails não seria o mesmo se o PGP tivesse se popularizado nos emails, e porque? A pratica de SPAM seria muito menor…

Deixa esclarecer o que é o PGP nos emails: Esta é uma ferramenta de criptografia e assinatura digital, de forma assimétrica, que garante a confiabilidade dos dados ali contidos no email. Então, como uma praga, como é o SPAM poderia continuar, se todos os emails exigissem a legitimidade do mesmo? Isso é o tipo de informação que não é todos que tem acesso, então, fica a dica… Querem confiabilidade e assinatura digital? PGP nele!

Agora, que é triste como o mercado anda agindo, no que diz repeito a emails.. Isso está! Viva ao lixo eletrônico!
