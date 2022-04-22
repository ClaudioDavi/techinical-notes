---
layout: note
title: EC2 Cost Optimization
id: cost-optimization
---

- **On-Demand** - Pay by the hour.
	- Pay only for the seconds that the instance is on running state
	- Recommended to Short term irregular workflows that cannot be interrupted
- **Savings Plans** - Commit to a certain usage for a discount
	- _Compute Savings Plan_: 66% discount to any ec2 instance 
	- _Ec2 Instance Savings Plan_: 72% discount on a instance family in a region
- **Reserved instances** - 1 to 3 year commitment including instance type and region
	- Applied to On Demand Instances
	- Can be convertible to different instance prices
- [[Spot Instances]] -> bid on unused machines and pay lower prices!

- **Dedicated Hosts** - Get a physical host fully dedicated
	- See [[How does EC2 work on bare metal]]
- **Dedicated Instances** - pay per hour on instances that run on single-tenant hardware
- **Capacity Reservation** - Reserve a capacity for Ec2 in a specific AZ for any duration
	- Needs to provide: AZ, Number of Instances, EC2 type, tenancy, platform/OS
	- Automatically used by running instances that match the attributes


Links: [[10 EC2 - MOC|EC2]]
