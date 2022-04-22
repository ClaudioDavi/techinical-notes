---
layout: note
title: How does the compute instance works?
id: compute-instance-internals
---

1. Bare metal servers hosts **Host Kernel**
2. Host Kernel holds the **Host OS**
3. Host OS provides the **Hipervisor**
4. Hipervisor allows **Guest OS**'s to run

The hipervisor is a virtualization management software that allows virtual machines to run in the same physical space, without sharing data.

> [!info] You actually endup sharing the Host OS with other users with their EC2 instances.

Links to: [[10 EC2 - MOC|EC2]]