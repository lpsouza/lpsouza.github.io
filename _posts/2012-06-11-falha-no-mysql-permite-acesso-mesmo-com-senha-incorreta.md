---
notion_id: 0d2d86fd-a54b-466d-98e8-f803a0aa311b
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2012-06-11T12:08:00.000Z
last_modified_at: 2022-12-19T20:46:00.000Z
category: Tech
published: true
title: Falha no MySQL permite acesso mesmo com senha incorreta
tags: []
image: null
---

Caso sério sobre segurança em banco de dados. Lendo no site do Tecnoblog, peguei o exemplo do script e estou colando aqui no meu blog para facilitar a vida dos DBA em MySQL ou MariaDB.

```c

/*

 * CVE-2012-2122 checker

 *

 * You may get differing results with/without -m32

 *

 * Joshua J. Drake

 */

#include &lt;stdio.h&gt;

#include &lt;stdlib.h&gt;

int main(void) {

    int one, two, ret;

    time_t start = time(0);

    time_t now;

    srand(getpid()*start);

    while (1) {

            one = rand();

            two = rand();

            ret = memcmp(&one, &two, sizeof(int));

            if (ret &lt; -128 || ret &gt; 127)

                    break;

            time(&now);

            if (now - start &gt; 10) {

                    printf("Not triggered in 10 seconds, *probably* not vulnerable..n");

                    return 1;

            }

    }

    printf("Vulnerable! memcmp returned: %dn", ret);

    return 0;

}

```

Autoria do Script é do desenvolvedor Joshua Drake da Accuvant Labs.

> A vulnerabilidade está presente nas versões 5.1.61, 5.2.11, 5.3.5, 5.5.22 e anteriores do MySQL e do MariaDB. Servidores de 64 bits com as distribuições Ubuntu, Arch Linux, openSUSE 12.1 e Fedora 16 contêm versões vulneráveis. A falha de segurança já foi corrigida em versões mais novas.

via [Falha no MySQL permite acesso mesmo com senha incorreta | Tecnoblog](http://tecnoblog.net/103828/falha-seguranca-mysql/).

