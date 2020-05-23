---
id: 1032
title: Falha no MySQL permite acesso mesmo com senha incorreta
date: 2012-06-11T12:08:50+00:00
author: lpsouza
layout: post
guid: http://luizsouza.com.br/?p=1032
permalink: /2012/06/11/falha-no-mysql-permite-acesso-mesmo-com-senha-incorreta/
star: false
category: blog
categories:
  - SegInfo
  - TIC
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
