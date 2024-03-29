---
author: Luiz Pereira de Souza Filho
category: Tech
date: 2014-09-03 08:54:00-03:00
image: https://luizsouza.com/wp-content/uploads/2014/09/enabling-ics-windows-7.png
last_modified_at: 2023-10-15 01:01:20.295576-03:00
layout: post
published: true
tags:
- compartilhar
- hyper-v
- ics
- internet-connection-sharing
- ip
- microsoft
- roteamento
- share
- winconnection
- windows
- windows-8
- windows-8.1
- wingate
title: ICS - Internet Connection Sharing, alteração dos IPs padrão
---

Estava pesquisando na internet sobre um problema que ocorre direto no Windows 8 (e persiste no 8.1) Pro, sobre o uso de uma placa de rede wifi em modo externo no Hyper-V. Simplesmente dá tudo quanto é tipo de erro!

Para solucionar este problema, não vamos fugir de compartilhar a conexão de internet entre duas placas de rede (Wifi para uma placa do Hyper-V em modo  interno). Para os mais radicais, podemos usar aplicativos como Wingate ou Winconnection para compartilhar essa internet. Mas, podemos usar de outra forma, mais simples: Usando o ICS da Microsoft. O ICS faz justamente o papel de compartilhar livremente a internet com uma outra placa de rede!

Tem um tutorial bem simples de como fazer aqui neste link: [Allowing Windows 8.1 Hyper-V VM To Work With Wifi](https://www.packet6.com/allowing-windows-8-1-hyper-v-vm-to-work-with-wifi/).

Ok, uma vez feito o tutorial, vocês podem reparar que a rede da placa do Hyper-V deve ter pego a configuração 192.168.137.1/24. Uma coisa que me deixava pensativo era: E se eu já uso essa configuração em uma rede qualquer? Entendendo um pouco de rotamento, sabe-se que redes de mesmo endereçamento em placas diferentes não são roteaveis, e mais, tendem a não funcionar bem, porque o sistema operacional não saberia para quem enviar o pacote IP!

Então, nas mesmas pesquisas que comentei acima, achei um outro artigo bem legal que mostra onde no registro fica essa configuração:

`HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters`

Lá, altere os valores de _ScopeAddress_, _ScopeAddressBackup_ e _StandaloneDhcpAddress_ para o novo endereço IP, e o Windows se encarrega do resto! 😉

O artigo na integra é este: [Hyper-V, NAT and tethering with Windows 8.1 and Windows Phone](http://www.vikingweb.it/wordpress/?p=430)
