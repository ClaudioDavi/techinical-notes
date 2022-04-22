---
layout: note
title: Ec2 Storage Options
id: ec2-storage-options
---


**Instance Store**: temporary data. Deleted on Stop, Hibernate or terminate.
**EBS Volumes**: Persistent Storage


## EBS Volumes

> [!note]
> **EBS** is Block level storage
> **S3** is object level storage

EBS can be used as a hard drive but it persists independently of the EC2 Instance. Moreover they are flexible enough that we can increase size and modify them while the instance is live. 

> [!hint] 
> Use as primary storage for data that requires frequent updates.
>  Also good for fast throughput with constant disk scans

You can attach multiple volumes to the same instance, however the instances and volumes must share the same Availability Zones (see: [[Regions and AZs]])
Depending on the volume and instance types we can **Multi Attach** and use the same volume for different instances running at the same time.

> [!caution] Multi Attach only works with IOPS SSD and require Nitro Based instances.

It has to main options:
**General Purpose SSD**: Standard workloads
**Provisioned IOPs**: High IO throughput with low-latency

> [!hint] EBS Encryption uses KMS Keys with the AES-256 Encryption algorithm

The encryption happens on the instance level not directly on the volume.

## Best Practices

- Use different EBS Volumes for the OS and the Data. 
- Ensure that the Data volume persists after termination
- Use instance store only for temporary data.

Make Regular Backups of your EBS volumes using EBS Snapshots, and create a custom AMI instance to store your configuration.

Links to [[10 EC2 - MOC|EC2]]