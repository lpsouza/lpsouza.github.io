---
notion_id: 2790830e-e2f1-453b-b716-8241def4ee87
layout: post
author:
  id: 3fa6445d-a13d-40cc-8901-4a9f6f654d3d
  name: Luiz Pereira de Souza Filho
  avatarUrl: https://lh3.googleusercontent.com/a-/AOh14GhpwZVI-JevyaNgTdlrOT6YN20cI6V9Kxtq38Ij8AQ=s100
date: 2023-07-17T15:40:00.000Z
last_modified_at: 2023-07-17T15:59:00.000Z
category: Linux
published: true
title: "Shell script: Formatando saída de API em tabela usando jq e csvlook"
tags:
  - linux
  - csv
  - json
  - shell script
  - shellscript
  - jq
  - csvlook
  - csvkit
  - curl
image: https://asciinema.org/a/9AzN9fY1oNHO1b8xaEYKOhUA4.svg
---

Estava fazendo uns acessos a API usando apenas shell script (curl) e jq para formatar a saída em JSON quando pensei: “poxa, bem que eu poderia ter uma saída em formato tabela né?” e comecei a pesquisar uma forma legal de fazer isso e encontrei esse tal csvlook (aplicação do pacote csvkit). Então resolvi compartilhar essa ideia.

Começando do começo: o que é e pra que serve o curl, jq e o csvlook?

O comando curl é uma ferramenta de linha de comando que permite que você faça solicitações HTTP para um servidor. Em outras palavras, ele permite que você obtenha informações de um site ou API, como dados, arquivos ou páginas da web. Esse comando é amplamente utilizado por desenvolvedores e administradores de sistema para automatizar tarefas e transferir dados entre servidores.

O comando jq é uma ferramenta que permite manipular e extrair informações de dados no formato JSON. Com ele, você pode filtrar, selecionar e transformar dados JSON de maneira fácil e eficiente. É como um "mestre dos dados" que entende a estrutura JSON e permite que você faça consultas e extraia apenas as informações relevantes que você precisa. Com o jq, você pode realizar tarefas complexas de análise de dados JSON com apenas alguns comandos simples.

E por fim, o comando csvlook que é uma ferramenta útil para visualizar e formatar dados armazenados em arquivos CSV. Ele permite que você visualize facilmente os dados em uma tabela legível, similar a uma planilha. Com o csvlook, você pode abrir arquivos CSV e obter uma visão clara das informações contidas neles, facilitando a identificação de padrões, tendências ou discrepâncias. É como um "tradutor" que transforma dados CSV em uma apresentação visual organizada, tornando mais fácil para qualquer pessoa entender e analisar os dados sem a necessidade de conhecimento especializado em programação ou planilhas complexas.

Tá bom, falei que o jq é para manipular JSON e que o csvlook manipula os resultados em CSV e transforma em um resultado em uma tabela organizada, mas o que JSON e CSV tem em comum pra isso acontecer? Bom, uma manipulação do jq ajusta exatamente a saída em formato CSV, sacou onde a mágica acontece? Aqui um exemplo pegando dados da SWAPI (Star Wars API): [https://asciinema.org/a/9AzN9fY1oNHO1b8xaEYKOhUA4](https://asciinema.org/a/9AzN9fY1oNHO1b8xaEYKOhUA4).

![Resultado final do meu Asciinema.](https://asciinema.org/a/9AzN9fY1oNHO1b8xaEYKOhUA4.svg)
<span class="caption">Resultado final do meu Asciinema.</span>

E é assim que a mágica acontece! Com a combinação do curl, jq e csvlook, você pode obter resultados incríveis ao acessar APIs e manipular dados. De um simples script shell, você pode transformar informações em JSON em tabelas organizadas e legíveis. Então, da próxima vez que precisar visualizar ou analisar dados, lembre-se dessas ferramentas poderosas. Agora é com você, desvende os segredos dos dados com o seu novo arsenal de comandos e deixe a criatividade fluir. Que a força esteja com você, no mundo dos shells e além! 😉

