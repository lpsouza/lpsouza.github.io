---
layout: page
title: Quem e o Luiz Souza?
---

Olá! Eu me chamo **Luiz Pereira de Souza Filho**, tenho seus <span id="years"></span> anos, sou [RPGista](https://pt.wikipedia.org/wiki/Categoria:RPGistas), [core gamer](https://en.wikipedia.org/wiki/Gamer#Dedication_spectrum) e [geek](https://en.wikipedia.org/wiki/Geek), que desde 1997 se diverte no mundo da Tecnologia da Informação. Quando digo que me divirto é porque tenho um *modus operandi* que rege que se você trabalha em algo que ama fazer, você não esta mais trabalhando um dia sequer em sua vida!

### Trabalho

Trabalho a seus <span id="working-it-since"></span> anos com Tecnologia da Informação, e desde o inicio sempre fui curioso tanto pelo lado de desenvolvimento quanto de infraestrutura e só recente quando a palavra "DevOps" nasceu que me descobri um "DevSecOps", pois minhas especialidades em TI são:

- Infra-estrutura de servidores e ambientes de trabalho;
- Segurança da Informação;
- Desenvolvimento de software.
    - Web (Frontend e Backend);
    - Mobile.

Além de uma carreira na TI, também trabalho na área da educação a <span id="working-teaching-since"></span> anos e é outra coisa que amo: Passar o meu conhecimento para outros! Algumas disciplinas que lecionei:

- Desenvolvimento de Sistemas;
- Desenvolvimento de Aplicações para a Internet;
- Desenvolvimento de Jogos Digitais;
- Desenvolvimento Móvel com HTML5;
- Comércio Eletrônico;
- Segurança em Redes de Computadores.

### Contatos

Entre em contato pelas minhas redes sociais:

{% include social.html %}

Ou mande um email para [contato@luizsouza.com](mailto:contato@luizsouza.com?subject=Contato pelo site).

<script>
    var now = new Date();

    var birthday = new Date('1980-11-10 00:00:00 -0300');
    if (birthday.getMonth() > now.getMonth() || (birthday.getMonth() == now.getMonth() && birthday.getDay() > now.getDay())) {
        birthday.setFullYear('1981');
    }

    var yearWorkingIt = 1997;
    var yearWorkingTeaching = 2011;

    document.getElementById("years").innerHTML = now.getFullYear() - birthday.getFullYear();
    document.getElementById("working-it-since").innerHTML = now.getFullYear() - yearWorkingIt;
    document.getElementById("working-teaching-since").innerHTML = now.getFullYear() - yearWorkingTeaching;
</script>
