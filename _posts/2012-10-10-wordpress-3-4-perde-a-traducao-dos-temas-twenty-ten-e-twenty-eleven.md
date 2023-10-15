---
author:
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
category: Tech
date: 2012-10-10 08:10:00-03:00
image: null
last_modified_at: 2023-10-15 01:01:20.285904-03:00
layout: post
notion_id: b420673f-76d1-4504-924d-ad7913f8d488
published: true
tags:
- dica
- fica-a-dica
- temas
- themes
- twenty-eleven
- twenty-ten
- wordpress
title: WordPress 3.4 “perde” a tradução dos temas Twenty Ten e Twenty Eleven
---

Uso o WordPress em modo Multisites com diversos clientes e hoje um deles veio me avisar que a as mensagens estavam aparecendo em inglês no site deles. Fui ver o arquivo de tradução dos temas padrão do WordPress (que eles usam), e cadê o pt_BR.mo?

Pesquisando por alguns segundos, vi no próprio site do WordPress o aviso que o idioma estava dando um erro no autoupdate da versão 3.4. Abaixo deixo o que o [Gabriel Reguly](http://omniwp.com.br/) comentou sobre o erro e a solução dele.

> A atualização automática da versão 3.4 do WordPress apaga os arquivos de tradução dos temas padrão.Para resolver isto é necessário enviar manualmente os arquivos abaixo para o seu servidor.

>

> * [3.4/twentyeleven/pt_BR.mo](http://svn.automattic.com/wordpress-i18n/pt_BR/tags/3.4/twentyeleven/pt_BR.mo)

> * [3.4/twentyten/pt_BR.mo](http://svn.automattic.com/wordpress-i18n/pt_BR/tags/3.4/twentyten/pt_BR.mo)

>

> Os arquivos devem ser colocados nas seguintes pastas remotas:

>

> * /wp-content/themes/twentyeleven/languages/

> * /wp-content/themes/twentyten/languages/

>

> Esta é uma falha no processo automático de atualização, espero que seja corrigida em breve pelo pessoal do WordPress.org

>

> Abraços,

> Gabriel

via [WordPress | Brasil » WordPress 3.4 “perde” a tradução dos temas Twenty Ten e Twenty Eleven](http://br.wordpress.org/2012/06/18/wordpress-3-4-perde-a-traducao-dos-temas-twenty-ten-e-twenty-eleven/)
