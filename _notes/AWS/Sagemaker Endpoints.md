---
layout: note
title: Sagemaker Endpoints
id: sagemaker-endpoints
---

Sagemaker Endpoints is the service that helps you create REST endpoints where you can make requests directly to your model, fully managed by AWS.

The rule of thumb for creating a Sagemaker Endpoint is quite simple: The machine must have more GPU Memory than the total size of the packaged model. So it'll fit in memory when requested. If we go lower it requires more memory and it just crashes, if we go higher it doesn't seem gain any benefits. We can aim for 'Just right' approach.

