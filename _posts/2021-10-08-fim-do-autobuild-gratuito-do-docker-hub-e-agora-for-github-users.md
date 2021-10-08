---
layout: post
author: lpsouza
date: '2021-10-08 10:13 -0300'
category: Tech
published: false
title: 'Fim do autobuild gratuito do Docker Hub?!?? E agora?? [For Github users]'
---
Então o pessoal do Docker [encerrou o autobuild do Docker Hub para contas gratuitas depois do dia 18 de junho agora (de 2021)](https://www.docker.com/blog/changes-to-docker-hub-autobuilds/ "Changes to Docker Hub Autobuilds") e eu que tinha uns 3 projetos buildando lá e no caso só me toquei hoje, quase 4 meses depois. 🙄

Depois da frustração de ter subido meu 4 projeto de imagem lá e só aí ter percebido que todos os meus projetos estavam sem builds recentes, comecei a analisar como resolver esse problema, e claro, achei a solução usando o [Github Actions](https://docs.github.com/pt/actions "GitHub Actions")! E para isso foi mais simples do que pensei e o legal é que me aprofundei mais no mundo do CI/CD do Github. Então sem mais delongas, vamos colocar um projeto de imagem para o Docker Hub pra funcionar automagicamente com Github Actions!

## Receita de bolo

Vamos lá, primeiramente precisamos no nosso projeto de um arquivo que podemos chamar de `main.yaml` (mas podemos colocar o nome que quisermos) e colocar ele numa pasta específica, isto é, na `.github/workflows/` do teu projeto. Blza, mas vamos ao conteúdo deste arquivo, antes de subir ele para o Github:

```yaml
name: Publish Docker image

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  push_to_registry:
    name: Push Docker image to Docker Hub
    runs-on: ubuntu-latest
    steps:
      - name: Check out the repo
        uses: actions/checkout@v2
      
      - name: Log in to Docker Hub
        uses: docker/login-action@f054a8b539a109f9f41c372932f1ae047eff08c9
        with:
          username: ${{ secrets.DOCKER_USERNAME }}
          password: ${{ secrets.DOCKER_PASSWORD }}
      
      - name: Build and push Docker image
        uses: docker/build-push-action@ad44023a93711e3deb337508980b4b5e9bcdc5dc
        with:
          context: .
          push: true
          tags: '<docker-username>/<image-name>:latest'
```

Lembrando umas questões importantes aqui:

- 