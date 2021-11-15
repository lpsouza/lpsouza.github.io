---
layout: post
author: lpsouza
date: '2021-11-15 11:26 -0300'
category: Tech
published: false
title: Atualizando para Windows 11
tags:
  - Windows
  - Windows 10
  - Windows 11
  - Upgrade
  - Atualização
  - Microsoft
image: 'https://luizsouza.com/assets/windows-11-system.png'
---
E lá vamos nós para mais uma atualização do Windows... Possuo um Dell G7 que veio com Windows 10 Professional de fábrica instalado e por tanto, com todos os suportes por parte da fabricante, para que mantenha o pleno funcionamento. Outra questão a salientar no inicio deste post é que sou técnico na área de informática e posso dar um spoiler violento aqui dizendo que, como sempre, o processo de upgrade da Microsoft é sempre um processo sofrido!

Disclaimer: Olha só, queria deixar claro que não defendo o upgrade do Windows 11 para hardwares não compatíveis, logo, todo este post está usando um hardware 100% compatível (incluindo o chip TPM 2.0 ativo). Não estou aqui para julgar as decisões da Microsoft e se eu não tivesse o hardware compatível eu nem começaria este processo, ok?

### Método 1: Upgrade do Windows 10 pelo processo de atualização do Windows

Sim, tentei seguir o caminho que a maioria deve estar pensando que funciona, usar o Windows Update quando ele permitir o upgrade. Funcionou? Spoiler: Não! Porque não funcionou? Então, ele fez o upgrade com sucesso, mas diversos aplicativos começaram a apresentar problemas "bizarros", desde visualmente apresentar algum glitch, quanto ao ponto de nem siquer abrir o aplicativo. Querem um exemplo? A tela de boas vindas do Windows 11 dava um erro e fechava do nada! Eu acredito que alguns aqui vão ler e já largar a máxima: "Essa microsoft lança essas porcarias tudo bugadas!" E olha, vou aplicar a culpa na Microsoft em 50% apenas. Porque? Simples: Eu tenho um Windows 10 com customizações, diversos softwares (uns instalados nos caminhos padrão e outros em caminhos customizados) e por aí vai... Como pode a Microsoft conhecer EXATAMENTE todos os tipos de personalização que existe?!?? Ser vidente não faz parte das premissas de um desenvolvedor!

Ok, mas alguns podem ainda querer "jogar querosene na fogueira" e soltar um: "Mas no meu MAC (ou Linux) já fiz atualizações de versão e tudo funcionou!" e neste ponto eu tenho que concordar com esse pensamento (até porque já fui usuário de um sabor de Linux por alguns anos), mas precisamos entender o mais importante: nem todo o SO é igual! O Windows tem uma arquitetura muito diferente do Linux ou ainda do MAC (que é uma herança de um primo do Linux, o BSD, e por isso as semelhanças). A arquitetura do Windows é uma herança direta do MS-DOS, um sistema que começou não possuindo uma divisão perfeita entre o ambiente da administração (quem instala/desinstala programas, administra recursos de hardware, etc.) do ambiente de usuário (aquele que consome os softwares instalados e gera o conteúdo). Devido a essa pequena diferença (Linux e MAC possuem uma separação muito bem definida de administrador e usuário) é que temos upgrades tão conturbados.

Mas aí vem a pergunta: Se tu tem todo esse conhecimento de como funciona os sistemas operacionais, tu ainda tentou esse método logo de cara? Pois é, sim... Mas tenho minhas razões: desde o Windows XP, a evolução no quesito ambiente administrador e ambiente usuário evoluiu monstruosamente! Logo, desde o Windows Vista que eu tento esse método e vou continuar até ver isso funcionando extremamente bem! 😅

### Método 2: Formatar completamente o notebook e instalar o Windows 11 do zero

Este sim é um método que muitos tentam nem começar, pois envolve perder tudo que está no computador. Então envolve desde backup a até lembrar de todos os programas que tu tinha instalado no computador. Existe um lado bom nisso: Podemos ter diversos programas mais nos atrapalhando do que sendo útil, e isso serve como uma "faxina pesada". Pô, agora sim a coisa funcionou né? Novamente... Não! Ué? Porque não deu certo? Spoiler: Lembram quando disse que o Windows 10 veio de fábrica? Isso não quer dizer que ele vem instalado pra uso apenas, quer dizer que a Dell fez todas a personalizações para que o hardware funcione em perfeitas condições e pensando que o modelo do meu é um notebook da linha Gaming, ele possui algumas customizações da Dell. Logo, instalar um Windows 11 do zero acarreta em não ter essas personalizações e por sua vez o inicio de uma batalha: Deixar o Windows 11 compatível com as customizações da fabricante do hardware.

Passei basicamente uma semana tentando configurar tudo o que o Windows precisava, mas sempre tinha um driver ou um componente que se apresentava como "incompatível". Até existem "soluções milagrosas" que uma vez instalado prometem varrer o computador e dar exatamente todos os drivers para instalar. Olha, pode ser que essas soluções sejam boas, mas a ideia de instalar um programa na maquina (que por sua vez as vezes podem instalar mais do que apenas o programa) que vai ser usado uma vez na vida, não me parece uma boa abordagem. Então ficamos com a porta de número 3, digo.. Metodo 3!

### Método 3: Reinstalar o Windows 10 de fábrica (Dell Recovery OS) e atualizar para o Windows 11

E então chegamos na opção mais radical de todas (radical porque se analisar, esse que vos escreve está realmente querendo usar o Windows 11, não? 😅) que é um processo longo de algumas horas (principalmente dependendo do computador e internet contratada). A ideia é recuperar o Windows 10 com todos os drivers e aplicações customizados, ir para a última versão de updates do Windows 10 e por fim subir a versão para o Windows 11. E provavelmente a pergunta que paira no ar: Funcionou? E minha resposta: Até o momento sim!

Esta opção é uma mescla dos dois métodos anteriores, pois temos o Windows 10 de fábrica sendo atualizado para o Windows 11, mas sem a variável "usuário deu uma zoada na versão atual", hehehe. E sendo assim, o Windows 10 veio todo configurado como se recem tivesse retirado da caixa o notebook e assim ele foi atualizado para o Windows 11 (como se tivesse saído da caixa)!

### Tá, mas depois de tudo isso, vale a pena?

Como já comentei anteriormente, não sou eu que vou ditar o teu gosto, mas posso dar a minha singela opinião sobre o Windows 11: Um sistema operacional que pensou em arredondar as bordas de tudo (o que achei bem bonito), integrou muito melhor o Windows Terminal e o WSL (coisas que uso no meu dia a dia), a barra de tarefas centralizada realmente fica muito bom quando usamos uma tela grande (no meu caso uma ultrawide) e ainda tenho que rever como ficou a parte gaming da coisa, pois até o final deste post não havia instalado nenhum jogo para testar, mas o que posso dizer é que no método 2 eu tinha instalado alguns jogos e estava com sérios problemas com a comunicação bluetooth (uso controle de Xbox One sem fio e fones de ouvido sem fio) quando estava em jogo (basicamente ficava "surdo" do nada ou ficava sem o controle por alguns instantes).

Mas novamente, essas são minhas opiniões e impressões de atualizar o Windows 10 para o novo Windows 11. Alguem teve uma experiência "menos traumatica" quando a minha? Comentem aí!
