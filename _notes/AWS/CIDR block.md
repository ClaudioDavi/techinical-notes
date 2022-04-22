---
aliases: CIDR, cidr

layout: note
title: CIDR Block
id: cidr-block
---


## **Classless Inter-Domain Routing notation**
It is used to to identify hosts and networks inside an existing network.
To create a network, we need to take consecutive segments of the whole IP addressing space. The CIDR notation help identify the network and hosts.

An IPv4 address consists of 32 bits. containing an IP address, a '/' character and a decimal from 0 to 32 . Eg.: 0.0.0.0/16

> Creating subnets is about creating __commonalities__ 201.105.7.34/24 is in the same network as 201.105.7.1/24. The suffix signals that only the first 24 bits of the network component are counted

This starts to make sense when we transform the decimal into binary:

_201.105.7.34 corresponds to 11001001 01101001 00000111 00100010_
With  _/24_ at the end we count only the first 24 bits for an IP range: _11001001 01101001 00000111_ Leaving the last 8 bits as a range of addresses to be assigned. That computes to a total of $2^9$ available addresses (See table), thus making those two addresses being part of the same network.



Links to : [[VPC]]

Sources: 
https://www.ionos.com/digitalguide/server/know-how/cidr-classless-inter-domain-routing/
https://blogs.mulesoft.com/api-integration/security/how-to-choose-the-cidr-block-for-your-vpc/