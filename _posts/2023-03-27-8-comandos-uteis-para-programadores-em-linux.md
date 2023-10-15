---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2023-03-26 21:19:00-03:00
image: https://luizsouza.com/assets/tmux-command.png
last_modified_at: 2023-10-15 01:01:20.316112-03:00
layout: post
published: true
tags:
- linux
- terminal
- programação
- pessoal
- comandos
- linha-de-comando
title: 8 comandos úteis para programadores em Linux
---

Esses dias a minha colega da Umbler, a Dani, me fez uma pergunta inusitada: “*tu pode me passar quais são os comandos (mesmo que básicos) que mais tu usa no dia a dia?*” Eu achei a pergunta muito boa, tanto que resolvi transformar a resposta neste post! Então bora lá!

Eu uso diversos comandos / programas para me auxiliar no dia a dia, então puxei da memória os 8 comandos que mais usei de forma básica (na realidade dei um `history` e olhei meus últimos 1000 comandos e separei 8 que mais se repetiam). 😅 Segue eles abaixo:

### mc

`mc` é um gerenciador de arquivos visual para Linux. Ele é executado em um terminal e oferece uma interface semelhante ao explorador de arquivos do Windows, permitindo que o usuário visualize e manipule arquivos e diretórios. O `mc` também possui vários recursos avançados, como edição de texto integrada e suporte a arquivos ZIP e FTP.

**Por que eu uso?** Facilitar meu uso do prompt de comando e porque não usar algo que me permite olhar arquivos compactados (como fazemos normalmente nas interfaces gráficas) ou simplesmente acessando arquivos remotos usando FTP? Uso essa ferramenta desde meu início com Linux e simplesmente adoro a praticidade dela!

![Este é o comando `mc` mostrando na esquerda meu diretório `/` e a direita a conexão ao site da minha esposa via FTP.](https://luizsouza.com/assets/mc-command.png)

Este é o comando `mc` mostrando na esquerda meu diretório `/` e a direita a conexão ao site da minha esposa via FTP.

### htop

`htop` é um comando de sistema Linux que exibe informações detalhadas sobre o uso de recursos do sistema, incluindo o uso da CPU, memória e swap. Ele é executado em um terminal e oferece uma interface interativa e colorida que permite aos usuários monitorar facilmente o desempenho do sistema. O `htop` também permite que os usuários gerenciem processos em execução, incluindo a capacidade de matar processos individuais ou grupos de processos. Ele é uma alternativa mais avançada ao comando padrão `top` do Linux.

**Por que eu uso?** Vai de encontro com o mesmo princípio que uso o `mc`: é muito prático visualizar de forma “gráfica” informações do computador. Entender se o que estou rodando em testes o que afeta no uso do computador e ainda tenho o controle de inclusive matar alguma aplicação, em caso de algo que tenha travado no computador!

![Muito mais prático entender como o computador está funcionando em tempo real com o comando `htop`.](https://luizsouza.com/assets/htop-command.png)

Muito mais prático entender como o computador está funcionando em tempo real com o comando `htop`.

### curl

`curl` é um comando de linha de terminal que permite fazer solicitações HTTP para servidores web. Ele pode ser usado para obter e enviar informações de e para servidores, incluindo downloads de arquivos, envio de formulários e autenticação de usuários. Ele também suporta autenticação com senhas e tokens de acesso, além de permitir a configuração de cabeçalhos personalizados para solicitações HTTP.

**Por que eu uso?** Esse é um dos comandos mais usados por mim, desde coisa simples como download de arquivos a testes de chamadas a APIs e chegando a uso com diversos scripts para algumas automações!

![Comando `curl` obtendo informações da SWAPI.](https://luizsouza.com/assets/curl-command.png)

Comando `curl` obtendo informações da SWAPI.

### jq

`jq` é uma ferramenta de linha de comando para análise e manipulação de dados JSON. Ele é executado em um terminal e permite que os usuários extraiam e transformem dados JSON de uma variedade de fontes. O `jq` suporta várias operações, como filtragem, mapeamento e redução, além de permitir que os usuários definam funções personalizadas para manipulação de dados. Ele é uma ferramenta poderosa para trabalhar com dados JSON em um ambiente de linha de comando do Linux.

**Por que eu uso?** Esse comando é parceiro direto do comando anterior, o `curl`, isso porque como ele faz o parser do JSON para o terminal, uso direto para fazer alguma automação ou obter o resultado para um teste. É simplesmente lindo!

![Comparando com a tela anterior (do `curl`), olha como ficou mais simples de obter uma informação do JSON de resposta com o uso do `jq`.](https://luizsouza.com/assets/jq-command.png)

Comparando com a tela anterior (do `curl`), olha como ficou mais simples de obter uma informação do JSON de resposta com o uso do `jq`.

### git

O `git` é um sistema de controle de versão distribuído usado para rastrear alterações em arquivos de código-fonte durante o desenvolvimento de software. Ele permite que vários desenvolvedores trabalhem em um projeto simultaneamente sem causar conflitos em seus arquivos. O `git` é executado no terminal e utiliza comandos como `commit`, `push` e `pull` para gerenciar as alterações nos arquivos. Além disso, o `git` oferece recursos como ramificação e mesclagem, que permitem que os desenvolvedores trabalhem em diferentes versões do código-fonte ao mesmo tempo e combinem essas versões em uma versão final. O `git` é amplamente utilizado em projetos de desenvolvimento de software e é uma ferramenta essencial para gerenciar alterações de código-fonte de forma colaborativa.

**Por que eu uso?** Bom, este é um comando que não tem por que não usar. Vai desde o fato de ter um código em versões quando estamos trabalhando em equipe. Na real eu acredito ser fundamental conhecer e usar o `git` em equipe. Mas não uso somente em time, mas pessoal com meus projetos tanto offline quanto para ter um backup deste código fora do meu computador.

### npm

`npm` é o gerenciador de pacotes padrão para o Node.js. Ele permite que os usuários instalem e gerenciem facilmente pacotes de código-fonte do Node.js em seus projetos, bem como publiquem seus próprios pacotes para outros usuários usarem. O `npm` é executado no terminal e oferece comandos como `install`, `uninstall`, `update` e `publish` para gerenciar pacotes. Além disso, o `npm` permite que os usuários definam dependências e devDependencies em seus projetos para garantir que todas as bibliotecas necessárias estejam instaladas corretamente. É uma ferramenta essencial para o desenvolvimento de aplicativos Node.js e é amplamente utilizada na comunidade de desenvolvimento de software JavaScript.

**Por que eu uso?** Embora a resposta que vocês possam esperar seja “porque eu desenvolvo em NodeJS”, a ideia vai um pouco mais além. Eu uso muito o `npm` para instalar pacotes globais de outros comandos úteis, como por exemplo o `http-server` que me permite levantar rapidamente um servidor web em qualquer diretório que eu esteja usando. Vale a pena dar uma conhecida no repositório do `npm` mesmo que você não programe em NodeJS!

```bash

# Exemplo da instalação global do comando http-server

npm -g install http-server

```

### nano

O `nano` é um editor de texto simples e fácil de usar no terminal do Linux. Ele é projetado para ser fácil de aprender e usar, permitindo que os usuários editem arquivos de texto diretamente no terminal. O `nano` oferece recursos como realce de sintaxe, pesquisa e substituição, bem como a capacidade de abrir e editar vários arquivos ao mesmo tempo. Ele também oferece uma ampla gama de atalhos de teclado para facilitar a edição de texto. O `nano` é uma ótima opção para usuários que precisam de um editor de texto simples e rápido para tarefas básicas de edição de texto.

**Por que eu uso?** Agora começa a polêmica (ou não). Digo isso mais porque vocês vão ouvir falar muito de outro editor famoso que é o `vim`. Sinceramente eu concordo que entre `nano` e `vim` o segundo é bem mais poderoso (plugins, configurações, etc.), mas o `nano` não perde no quesito “fácil e funcional”. Por que digo isso? Porque quando preciso de um editor para rapidamente olhar ou modificar um arquivo, ele, sem plugins ou configurações especiais, entrega uma interface clean, mas completamente funcional para qualquer usuário que queira usar. Deixemos a briga de lado, tem editor em terminal para todos os gostos! 😅

![Reparem que se compararmos com o `vim`, o `nano` possui uma interface mais amigável e fácil de entender (e caso não tenha entendido de primeira, o `^` é a abreviação da tecla `Ctrl`).](https://luizsouza.com/assets/nano-command.png)

Reparem que se compararmos com o `vim`, o `nano` possui uma interface mais amigável e fácil de entender (e caso não tenha entendido de primeira, o `^` é a abreviação da tecla `Ctrl`).

### tmux

`tmux` é um terminal multiplexador que permite que os usuários criem sessões de terminal e gerenciem várias janelas e painéis dentro dessas sessões. Ele é executado no terminal e permite que os usuários dividam a tela em vários painéis e alternem entre esses painéis facilmente. O `tmux` também oferece recursos avançados, como a capacidade de anexar e desanexar sessões de terminal, permitindo que os usuários retomem o trabalho anterior facilmente. Ele é uma ferramenta poderosa para gerenciamento de sessões de terminal e pode ajudar os usuários a aumentar sua produtividade.

**Por que eu uso?** Esse é o meu melhor amigo quando preciso trabalhar com uma tela de terminal e preciso ser multi tarefa. Facilmente podemos inclusive configurar o uso do mouse para termos coisas como menu suspenso com o botão direito ou rolagem com o scroll do mouse. Simplesmente muito prático!

![Aqui temos o `tmux` rodando com duas telas (rodando o `htop` de um lado e o `mc` do outro.](https://luizsouza.com/assets/tmux-command.png)

Aqui temos o `tmux` rodando com duas telas (rodando o `htop` de um lado e o `mc` do outro.

E esses são os 8 comandos que mais uso no meu dia a dia como programador Linux! Claro que existem muitos outros, mas esses são aqueles que me ajudam a ser mais produtivo e eficiente no meu trabalho. Espero que vocês tenham gostado dessa lista e que possam aproveitar essas ferramentas da mesma forma que eu aproveito! Até a próxima!
