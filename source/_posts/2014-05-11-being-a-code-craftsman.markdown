---
layout: post
title: "Being a code craftsman"
date: 2014-05-11 21:44
comments: true
published: true
author: Tim Hordern
categories:
- testing
- product development
- product management
- tech
description: "Being a code craftsman means writing automated testing"
keywords: "testing, automated testing, product development"
---

If you don't believe in writing tests, you don't believe in building quality products.

If you don't believe in automated tests, you don't believe in the power of computers.

If you don't believe these two things, stop calling yourself a craftsman. A craftsman cares
relentlessly about the quality of their product, the quality of the experience, the value of their
users.

A code craftsperson believes that they are building quality software products, and that
computers are powerful tools that can be harnessed to perform repeated tasks, such as repeated
quality validation. Same as the mechanical engineer who pours lubricant on the racecar engine once
again, or the chef who sharpens their knives even though they've done it a thousand times before, a
good craftsman knows that a truly *great* product only comes sweating every detail relentlessly, and
they understand that a computer does this much, much faster and more effectively than human
eyeballs. They know the value of automated testing, and they know the value of exploratory testing.
They use *both*, and they trust the opinion of their testers, because that's what great teams do.

Building great products means writing tests. It means having automated tests. Don't believe me?
Then don't call yourself a code craftsman.

*Sidenote:* it's sometimes perfectly okay to *not* write tests. Or not to use automated testing. A
technical spike or a hack project are great cases where it's better to prioritise developing the
idea. But you'd never put that out into the real world. Quality is not about broken products. If
you know that your idea is worth pursuing, then
[solve that idea completely for your users](http://timhordern.com/real-world-product-development/)
and build real-world automated tests.

*Side-sidenote:* remember, if you're working at scale (eg. serving millions/hundreds of
millions/billions of requests a day), then the one-in-a-million edge case (the one that you don't
bother testing for) happens *every single day*. Up to thousands of times a day. Thousands of your
users are seeing that problem every day.
