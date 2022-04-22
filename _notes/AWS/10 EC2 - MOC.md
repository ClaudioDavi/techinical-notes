---
aliases: ec2, EC2
layout: note
title: EC2
id: ec2
---


> **All Notes related to EC2 Instances and how they work**

EC2 is the most common and widely used AWS service. They are the actual computers that you end up using. The general use is the allocation of a compute resource to run your service. (see [[How does EC2 work on bare metal]]) 

EC2 also provides a few storage options, being EBS the most common and with the most customizable options attachment types, sizes, encryption and so on. 
See: [[EC2 Storage Options]]

It also has a few networking options to manage access to the internet and internal access. More details at [[EC2 Networking]] 

There are several different types of  Operational Systems that can be used. They are called [[Instance AMIs]] they are the equivalent of docker images for EC2. Furthermore, not only we can pick the OS, but we can even choose which [[AWS Compute Instance Types]] we need; they have a wide variety of memory, volumes and vCPU configurations and must be chosen with their capabilities in mind.

The [[EC2 user_data]] is a way to run scripts when the machine boots up, which can be very helpful to install some software or to run some scripts that might affect how the instance works or how the software interacts with its environment. 

The best way to reduce [[EC2 Costs]] is to use [[Spot Instances]]. Using a cluster system like ECS and setting the trigger for new instances to be the spot instance termination notification we can create reliable services.

[[Key Pairs]]

Basic 4 monitoring metrics:
CPU, Disk, networking and status check

---

Links: [[01 Compute Services - MOC]]
