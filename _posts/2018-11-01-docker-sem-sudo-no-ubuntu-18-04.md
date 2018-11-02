---
title: 'Docker sem sudo no Ubuntu 18.04'
date: 2018-11-01T21:18:00-03:00
author: lpsouza
layout: post
permalink: /2018/11/01/docker-sem-sudo-no-ubuntu-18-04/
headerImage: false
star: false
category: blog
tags:
  - docker
  - nosudo
  - sudo
  - ubuntu
  - linux
  - permissions
---
Tenho o costume de usar o docker para algo mais inusitado que o normal: Criar comandos para coisas que não quero instalar no computador. Como assim? Um exemplo foi o `dotnet` que queria não ter instalado, mas queria o comando para criar meus projetos em .NET Core. E então eu crio um shell script chamado dotnet, coloco em um diretório `/bin` e não preciso mais me preocupar se esta instalado ou não! Veja o exemplo do script abaixo:

```sh
#/bin/sh

docker run --rm -ti -v $PWD:/app --link=mysql-server lpsouza/dotnet dotnet $*
```

Só com esse script eu posso rodar o `dotnet` sem ele! :-)

Ok, aí temos o problema do sudo que deveria ser rodado sempre para que meu script rodasse o Docker. Então para isso resolvi procurar na internet se posso usar meu usuário local para utilizar o Docker sem precisar do sudo e não é que dá mesmo? Segue a receita de bolo abaixo.

## Receita de bolo

1. (Se não existir) crie um grupo para o Docker:
    ```sh
    sudo groupadd docker
    ```
1. Adicione o seu usuário no grupo:
    ```sh
    `sudo usermod -aG docker $USER`
    ```
1. Faça o logoff do usuário e o login novamente
1. Faça o teste (né?) com o comando:
    ```sh
    `docker run hello-world`
    ```
    - Caso apareça o erro `WARNING: Error loading config file: /home/user/.docker/config.json -
stat /home/user/.docker/config.json: permission denied` é possível que você já tenha utilizado alguma vez o Docker com este usuário, usando o `sudo`. Se for este o caso, use estes comandos:
    
```sh
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R
```

Esta receita eu peguei na página da [documentação do Docker](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user) e ela termina aqui dizendo que tudo funciona! Mas não foi o caso para mim! Então continuou com erro de acesso, como se precisasse usar o sudo para rodar o comando do Docker. Achei a solução em um [post do AskUbuntu](https://askubuntu.com/a/982187) que se resume em rodar mais um comando:

```sh
sudo setfacl -m user:$USER:rw /var/run/docker.sock
```

Agora sim! Tudo funcional! :-D
