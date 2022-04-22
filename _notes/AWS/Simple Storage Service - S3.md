---
aliases: S3, s3
tags: projects/aws/storage
layout: note
title: S3 Storage Classes
id: s3-storage-classes
---

# S3 Storage Classes

- **S3 Standard** - Default Storage Class
- **S3 Intelligent-Tiering** - Optimizes Storage costs by moving data to the most effective access tier.  We pay for a small monthly monitoring and automation fee
- **S3 Standard-IA/One Zone-IA** - Long lived and infrequently acessed data. Charges a retrieval fee. Good for: Backup, older data.
	- *Standard IA* - Multiple availability zones.
	- *One Zone-IA* - Single zone, cheaper but not as resilient.
- **S3 Glacier Flexible retrieval**: Long lived archives with retrieval times from minutes to hours.
- **S3 Glacier Deep Archive**: Long lived archives (less than once a year access) with hours of retrieval times.

[[Bucket Policies]]