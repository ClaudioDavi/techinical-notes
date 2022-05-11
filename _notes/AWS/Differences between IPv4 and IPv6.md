---
layout: note
title: Differences Between IPv4 and IPv6
id: ipv4-vs-ipv6
---

## CIDR Block Size
Check: [[CIDR block]]

**IPv4 VPC CIDR Block:** size can be from 16 to 28
**IPv6 VPC CIDR Block:**  fixed at 56

**IPv4 Subnet CIDR block:** From 16 to 28
**IPv6 Subnet CIDR block:** Fixed at 64

## Public and Private Addresses
On **IPv4** _there's a difference between private and public IP Addresses._
To enable communication with the internet, a public IPv4 address is mapped to to the primary private IPv4 address though a NAT (Network Address Translation)

On **IPv6** _All IP Addresses are public._ The IPv6 address persists when you restart or stop your instance and is released when you terminate the instance

### Persistence:
IPv4 Addresses are released whenever you stop, terminate or restart your instance. That means that whenever one of the actions occur, your instance will change IP. 

IPv6 Addresses are fixed and only released on instance termination.

### Elastic IP Addresses
With IPv4 [[Elastic IP Address]] are supported.
With IPv6 [[Elastic IP Address]] are **NOT** supported.

### Security
The Ipv6 address is public, however we can control the access using security groups and Network ACL rules or the routing of the subnet.