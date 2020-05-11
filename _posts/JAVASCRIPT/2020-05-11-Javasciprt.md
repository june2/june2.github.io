---
layout:     post
title:      "How dose JavaScript work?"
subtitle:   "What is the event loop?"
date:       2020-05-11 00:00:00
author:     "june"
# header-img: "img/post-bg-re-vs-ng2.jpg"
header-mask: 0.3
catalog:    true
categories: JAVASCRIPT
tags:
  - node.js
---


## JavaScript
- Single-threaded 
- Non-blocking
- Asynchronous
- Concurrent


## V8 Engine
![image](https://user-images.githubusercontent.com/5827617/81519830-70bf4600-937d-11ea-9645-394a48642663.png)
- Heap 
  - where memory allocation happes.
- Stack
  - To save the JS function programming. 
  - On each new function call, it’s pushed on top of the stack  
- Web APIS
  - Extra thhings are the browser provides. DOM, AJAX, timeout etc
- Callback Queue
  - When a process finished its job, such as a xhr call, it’s dropped in a callback queue. 
  - Callback queue is triggered by event loop process after our stack is empty which means the process waits in that queue until our stack is empty.
  - Once our stack has no function call, then a process is popped-out from callback queue and pushed in to stack
- Event loop
  - A process which is responsible to check our stack and then trigger our callback queue continuously.


## The call stack
- one thread == one call stack == one thing at a time

## Visualizing JS runtime
[How dose it work?](http://latentflip.com/loupe/?code=JC5vbignYnV0dG9uJywgJ2NsaWNrJywgZnVuY3Rpb24gb25DbGljaygpIHsKICAgIHNldFRpbWVvdXQoZnVuY3Rpb24gdGltZXIoKSB7CiAgICAgICAgY29uc29sZS5sb2coJ1lvdSBjbGlja2VkIHRoZSBidXR0b24hJyk7ICAgIAogICAgfSwgMjAwMCk7Cn0pOwoKY29uc29sZS5sb2coIkhpISIpOwoKc2V0VGltZW91dChmdW5jdGlvbiB0aW1lb3V0KCkgewogICAgY29uc29sZS5sb2coIkNsaWNrIHRoZSBidXR0b24hIik7Cn0sIDUwMDApOwoKY29uc29sZS5sb2coIldlbGNvbWUgdG8gbG91cGUuIik7!!!PGJ1dHRvbj5DbGljayBtZSE8L2J1dHRvbj4%3D)


## Reference
- [What the heck is the event loop anyway?](https://www.youtube.com/watch?v=8aGhZQkoFbQ)