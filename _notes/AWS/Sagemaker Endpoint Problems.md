---
layout: note
title: Sagemaker Endpoint Problems
id: sagemaker-problems
---

> Note: This is my personal experience with Sagemaker and may not represent how it actually works.

 **Things that we should be careful about:**
	- *Request Rate* (Sagemaker has a request queue limit of 60s) So it depends on how long the model takes to respond. If the expected response time for a queue of requests is bigger than 60seconds it stops entirely.
	- *Endpoint Configuration bindings*: Sagemaker does not have an ID binding for configuration endpoints. So whenever we create an endpoint, it will search for endpoint configurations already created with that name, before deciding if it's going to create a new one. It does not have an 'edit configuration' feature, so it will take the one that already exists instead of what is on the scripts. We always have to create and delete endpoints alongside with the configurations to make it work as expected.


**On Model Monitoring**
- Whenever a model stops responding or just outright freezes Sagemaker gives no warning or even evidence in the logs that the problem has happened/is happening. The logs and the instance metrics do not provide any useful information for debugging. Most of the times it solves itself however sometimes we have to intervene and delete everything.
	