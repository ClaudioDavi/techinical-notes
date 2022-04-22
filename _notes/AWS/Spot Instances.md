---
layout: note
title: Spot Instances
id: ec2-spot-instances
---


Bid on unused machines and pay lower prices!
	- Terraform usage of spot instances:
		- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/spot_instance_request
		- https://akomljen.com/terraform-and-aws-spot-instances/
	- _Spot Prices_: Hourly price for a spot instance (**Up to 90% Discount**)
	- **Good way to save money** if we can be flexible with our workload. The machine can be terminated if max capacity or if your price does not match the current instance price
	- Good for data analysis, batch jobs, CI/CD and background tasks (stateless workflows)
	- _Instance Rebalance Recommendation_: Amazon will notify you that your instance is at risk of interruption
		- We can use this signal to launch or move the workflow onto spot instances that are not at risk of interruption [Source](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html)