---
layout: note
title: EC2 Networking and Security
id: ec2-networking-security
---

Uses security groups and [[VPC|VPC]]s to manage access to the internet
Can associate static IPv4 address (Elastic IP Address)

## Definitions

### Security Groups
Virtual firewall. Controls inbound and outbound traffic. 
A good practice is to  apply the least permissive rule as possible. 
> [!hint] We can use SSM to manage the session for the ssh permission instead of publicly opening the port 22  
> _still have to find how to do this with terraform_

### NACL
**Network Access Controllers**
Optional layer of security for VPCs. Each subnet can be associated with one or more NACL. They have separated inbound and outbound rules. And are very useful to deny access.

> [!caution] Security Groups are stateful, NACLs are stateless

### Subnet
Specify the [[CIDR block]] for the subnet, which is a subset of the VPC [[CIDR block]].
A subnet with traffic routed to an internet gateway is a _public subnet_

### Elastic Network Interfaces
Logical networking component in a VPC that can provide access to a network. A single instance can have more than one ENI, and because of that, an EC2 instance can have access to more than one network.

Learn More: [[IP Addressing in VPC ]]

---
Links to: [[10 EC2 - MOC|EC2]], [[VPC]]
