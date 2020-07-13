---
author: lpsouza
category: blog
date: 2018-12-08 18:31:41-03:00
layout: post
tags:
- Containers
- LXC
- LXD
- Linux
- Ubuntu
- Fica a dica
title: Iniciando os trabalhos com LXD
---

Desde que conheci a tecnologia de contêineres eu sempre mexi com Docker e pra mim é uma tecnologia muito boa e funcional! Uso ele direto no meu dia a dia no meu notebook para meus diversos projetos! É Node.JS, PHP ou C#, sempre que posso monto todo o projeto dentro de contêineres e procuro locais onde essa tecnologia é aplicada para publicar minhas imagens. Mas eis que em uma *daily* onde trabalho, começamos uma discussão sobre uso de contêineres e chegamos na discussão do LXC (*Linux Contêineres*) e com isso me lembrei de uma pesquisa que fazia muito tempo que queria fazer em meus horários livres, mas sempre esquecia: Afinal, como funciona esse LXC... E o que é o conceito do LXD??? Qual a diferença entre LXC e LXD?? E como eu, um rato de Docker posso aprender a brincar com estas outras tecnologias de contêineres? E será útil para algo na minha vida em meu notebook como é hoje o Docker??

Ok, então comecei do principio: Pesquisando LXD e LXC. Com isso cheguei a um vídeo no Youtube muito legal e esclarecedor que comenta e elucida dúvidas sobre o que é um e o outro, e ainda como bônus me ajudou a entender onde o Docker entra no meio disso tudo! Segue abaixo ele:

<iframe width="560" height="315" src="https://www.youtube.com/embed/GYppOyCbM68" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Então pelo que o Anthony James e o Chad Miller comentam no vídeo, LXD é basicamente o daemon e o LXC é o cliente (nos referindo a comandos) e que no final o conceito é o mesmo. Outra coisa que o vídeo esclarece é quanto a o que fica neste tipo de contêiner: Basicamente um "*nano Linux*", uma virtualização a nível de sistema operacional e não de hardware! Partindo disto, comecei a instalar então o LXD e o LXC no meu notebook (Ubuntu 18.04):

```bash
sudo apt update
sudo apt install lxd
sudo apt install lxc-client
```

Depois de instalado comecei os testes:

```bash
lxc launch ubuntu: ubuntu-teste
```

Com isso, de maneira muito similar o Docker, ele baixou esse tal "*nano Linux*" e começou a rodar! Para ver rodando os contêineres, usei o comando `lxc list` e para entrar no contêiner, usei:

```bash
lxc exec ubuntu-teste bash
```

E a partir daí todos os comandos são executados como root do contêiner, de maneira muito similar também ao Docker. Mas então vem a questão: Falei até agora que tudo é similar ao Docker, então porque usar LXD? Pelo que comenta o Chad Miller no vídeo acima, o Docker foi a evolução natural do uso das imagens e com isso o propósito destes dois mudou. Pensando rapidamente, podemos ver nos repositórios do Docker que ele quer e se torna cada vez mais um PaaS (*Platform as a service*), entregando pacotes de software prontos, como *Wordpress*, *Node.JS*, *PHP*, *MySQL*, etc. E por outro lado o LXD/LXC pretendem continuar sendo uma forma de conteinerização de SO, onde a entrega esta mais para um auxilio no processo de *software-defined data center* melhorando a entrega da IaaS (*Infrastructure as a service*);

Então o post acaba por aqui, apenas introduzindo os meus estudos rápidos sobre LXD. Assim que tiver mais laboratórios, volto aqui para mais posts!