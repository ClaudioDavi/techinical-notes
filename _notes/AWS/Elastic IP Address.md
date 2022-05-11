---
layout: note
title: Elastic IP Address
id: elastic-ip-address
---
### Elastic IP Address
Elastic IP Addresses are only supported for IPv4 address types.

It is a **static address**, which means that will not change over time and can be trusted to hold that value for as long as its on.

When used, the [[10 EC2 - MOC|EC2]] instance doesn't need to have a fixed IP, the Elastic IP is mapped to the private instance IPv4 address allowing the EC2 instance to change IPs without changing the public IP Address. 

> Important to remember that whenever an EC2 instance restarts, it also changes its current IP Address.

Another benefit of using Elastic IP address is that whenever an instance fails, it can remap to other instances, not allowing the service to go down.

### Costs

You are charged as long as it is not being used (counter intuitive, I know.)
If it's assigned to an instance, it replaces the Public IPv4 if an instance and have no cost associated.