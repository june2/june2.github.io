---
layout:     post
title:      "DataLoader"
subtitle:   "Facebook DataLoader"
date:       2020-05-12 00:00:00
author:     "june"
# header-img: "img/post-bg-re-vs-ng2.jpg"
header-mask: 0.3
catalog:    true
categories: IT
tags:
  - IT
---

# What is dataloader
- library for batchin and caching
- these two techniques that we use to make if fast to execute against database back-end behind web service

# When to use DataLoader and when to use Redis
- DataLoader
  - cache is specific to an individual request.
  - if two requests are processed at the same time, they will not share a cache. 
  - it does not have an expiration and a mechanism for invalidating individual cache values.
  - cache will be deleted once the request completes

- Redis
  - key-value store that's used for caching, queues, PubSub and more
  - it use the cached value until it expires or is invalidated
  - using it as a cache layer between GraphQL and the database, API or other data source
  - using it as part of a PubSub implementation when implementing subscriptions
  
## Reference
- [DataLoader – Source code walkthrough](https://www.youtube.com/watch?v=OQTnXNCDywA&feature=youtu.be)