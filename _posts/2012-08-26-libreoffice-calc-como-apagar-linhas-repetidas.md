---
author:
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
category: Tech
date: 2012-08-26 15:56:00-03:00
image: null
last_modified_at: 2022-12-19 17:47:00-03:00
layout: post
published: true
tags: []
title: Libreoffice Calc - Como apagar linhas repetidas
---

Estava me batendo para fazer isso no Calc, quase apelando pro uniq no terminal... E eis que encontrei a solução na internet!

> Às vezes, temos uma planilha no BrOffice.org Calc com algumas linhas repetidas, mas precisamos desses dados sem nenhuma duplicação. Qual a forma mais prática de apagar linhas repetidas em uma planilha no BrOffice.org Calc? Os passos abaixo fornecem uma maneira:

>

>   1. Selecione a área com os dados que você quer excluir os duplicados;

>   2. Acesse menu Dados ▶ Filtro ▶ "Filtro padrão...";

>   3. Na janela que é aberta, o rótulo da primeira ou última coluna deverá aparecer no item "Nome do campo", mude isso para "-nenhum-";

>   4. Clique no botão "Mais". Então marque a opção "Sem duplicação";

>   5. Marque a opção "Copiar resultado para...". Clique no botão com uma seta verde (se você posicionar o mouse em cima ele mostra o nome "Encolher"), então selecione uma célula para onde deseje copiar os dados, pode ser na mesma folha de planilha ou em outra folha. Após isso, clique no botão "Encolher" novamente, para voltar a janela anterior. Então clique em "OK". Os dados não repetidos serão copiados para onde você determinou. Esses passos funcionaram nos testes que fiz no BrOffice.org 3.1.0. em uma máquina Ubuntu 8.04

via [vivaotux: Calc - como apagar linhas repetidas](http://vivaotux.blogspot.com.br/2010/04/calc-como-apagar-linhas-repetidas.html)

**Edit 05/03/2017:** Provavelmente alterou algo nas traduções, então no item 4, onde lê-se _"Mais"_ é _**"Opções"**_ e onde lê-se _"Sem duplicação"_ é **"Sem duplicatas"**.
