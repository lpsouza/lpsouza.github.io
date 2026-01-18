---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2009-10-12 05:07:00-03:00
image: https://luizsouza.com/assets/2009-10-12-problema-de-leitura-em-hd-externo-usb-resolvido/tela-chkdsk.png
last_modified_at: 2023-10-15 01:01:20.227798-03:00
layout: post
published: true
tags:
- chkdsk
- databack
- disco-rígido
- fica-a-dica
- format
- getdataback
- hardware
- hd-externo
- ms-dos
- raw
- recuperar-dados
- recuperar-formato
- usb
title: Problema de leitura em HD externo USB [Resolvido!]
---

Ontem de noite me deparei com um problema que me deixou com frio na espinha: Meu HD externo USB de 250 Gb simplesmente "perdeu a formatação". Este era simplesmente meu disco de dados, onde tinha tudo.. Fotos, vídeos, softwares, etc..

**_Aviso_: Se você esta aqui lendo para tentar recuperar o seu HD externo, e não quiser ler minha história, pode pular direto para _"receita de bolo"_.**

Então trocando um papo com a [@Clarini](http://twitter.com/Clarini) via Nimbuzz, ela lembrou de um programa muito bom para recuperação de dados: o [GetDataBack](http://www.runtime.org/data-recovery-software.htm). Baixei uma versão mais antiga com serial junto (sim, isso é pirataria e blablabla mas foi no desespero, acreditem) e mandei rodar enquanto fui jantar na minha mãe (o GetDataBack disse que levaria mais de 4hs pra ler o meu HD de 250Gb, o que deve ser por causa da velocidade de leitura da USB). Alias, vale lembrar que esse software é para Windows, e se lembram a alguns posts atras, estou agora usando Linux no meu notebook. Mas como sou um bom técnico em TI e um nerd que gosta de MMOs, tenho uma pequena partição com Windows XP Pro, e então usei ela. E como eu só uso essa partição de vez em nunca, eu não havia configurado nada quase, somente os drivers, skype e nimbuzz, eu mandei o GetDataBack ler o HD e baixei a tampa do notebook.. Não preciso lembrar que isso por padrão do XP é o comando para entrar em modo de espera, não? Sai achando que ele estava rodando o programa, e voltei umas 3hs depois.. Achando que estaria quase completo, e para minha surpresa, o LED indicava que estava "em espera". Não preciso dizer o quão feliz fiquei com isso. Arrumei este pequeno "bug operacional", mandei ele fazer a leitura novamente (mais 4hs) e resolvi ir dormir.. Acordo com a minha filha (uma cadelinha linda chamada Borboleta) me lambendo e me chamando pra abrir as portas pra ela passear, quando me levanto, para minha surpresa olho pro note e lá está ele em modo de espera novamente!!! Olhei o que aconteceu e havia esquecido de um pequeno detalhe: Instalação padrão do XP ele configura para entrar em modo de espera depois de 10 minutos ocioso!!! Bom, depois dessa eu perdi o sono... E fui para o Linux.. Tentei mais uma vez montar o HD.. Nada.. Erro..

Entrei no grande Oraculo da internet, e perguntei a ele pelo erro que o Linux reportou.. Daí um rapaz comentou que esse erro pode ocorrer nos Windows por não mandar desconectar o HD via software antes de remover fisicamente, por causa da "flag de uso" dele. Lembrei que o erro começou quando não consegui ler normalmente o HD em um outro Windows XP (do meu PCTV que tava instalando o Windows MCE 2005). Então poderia ser isso.. E comentaram que somente pelo Windows poderia ser recuperado, "Windows tools" eles comentaram. Certo, voltei para o Windows e tive a brilhante ideia: Recorrer ao único Sistema Operacional bom que a Microsoft roubou... O MS-DOS!

Entrei no DOS e fiz um comando que havia testado no Windows sem sucesso: chkdsk. E não é que ele passou na unidade, e RECUPEROU o formato?? Não preciso dizer que dei pulos "desta idade" de alegria!!!

**Receita de bolo:**

Para quem tiver um problema parecido, entre no MS-DOS (ou CMD) e digite:

```cmd
chkdsk g: /f
```

Lembrando que "g:" é a unidade que estava o meu HD externo.. Ajuste para a sua unidade..

Estou feliz com essa recuperação!

**Bônus:**

Alguns estão encontrando dificuldades ao executar a "receita de bolo", como: Unidade em RAW, "Não há suporte para o pedido" e entre outros... Vou (tentar) atualizar este post constantemente para adicionar links a respostas destes tipos de problemas.

Problemas encontrados pelos leitores (e possíveis soluções):

* [How To Fix: External Disk Drive Suddenly Became RAW](http://html5.litten.com/updated-how-to-fix-external-disk-drive-suddenly-became-raw/) (em Inglês, leiam com cuidado)

* [Não há suporte para o pedido. (0x80070032)](http://answers.microsoft.com/pt-br/windows/forum/windows_7-security/n%C3%A3o-h%C3%A1-suporte-para-o-pedido-0x80070032/45719cf0-1c83-4b06-ad71-c10f0e90c769?auth=1) (Microsoft Community)

* [Mensagem de erro "Não é possível abrir o volume para acesso direto" quando o Chkdsk é executado na inicialização](https://support.microsoft.com/pt-br/kb/823439)

  * Informação adicional: Olha, o link comenta em Windows XP, o qual nem tem mais suporte pela Microsoft. Se não for este o seu caso, e tiver um windows mais recente, tente iniciar o prompt de comando como administrador.

**Editado em 01/03/2016:** Conforme dica do **Pedro Romero**, alterei a letra da unidade pra _g:_ ao invés do _f:_. Obrigado pela dica! 🙂
