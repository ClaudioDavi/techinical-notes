---
aliases: key pair, ssh
layout: note
title: Key Pairs
id: ec2-key-pairs
---

# Key Pairs

EC2 uses Key pairs to prove identity when connecting to an instance. 
It stores the public key and the private key remains local.
There's a way to [create key pairs with terraform](https://gist.github.com/diomalta/e0a573156678b08cf3fc5f6dab321da0).
> [!caution] There's no way to recover a private key

Links to: [[10 EC2 - MOC|EC2]]