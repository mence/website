---
layout: post
title: "Test Data Fun"
date: 2013-02-09 19:30
comments: true
published: true
author: Tim Hordern
categories: 
- testing
description: "What test data do you choose?"
keywords: "test data, testing, testers"
---

As a tester, there are times where you want representative test data. This is test data that looks and feels like the real thing. Maybe you get it out of production, maybe you use a real customer's information, maybe you just know what the type of information customers use and what it looks like.

And then, there are times where you just need *any* old test data. And things then get a little silly.

There are good reasons for this. If you utilise silly test data, no-one is going to mistake it for the real thing. Transactions won't be counted for real sales. Accounts won't get messed up. Also, silly test data never gets re-used for important meetings or presentations, or used by other teams. Everyone knows that it looks weird and so they don't bother stealing your test data. It doesn't get counted in reports. It's easy to identify if, horrors of horrors, it mistakenly makes it's way to production, not your test environments (if you're wondering, you *really* shouldn't let that happen).

But by far, the *best* reason to use silly test data is to keep your testers feeling awake and engaged. It gets pretty mind-numbing entering field upon field of information as you test out screens and pages. Using silly names and silly test data lets a lot of variety into your testing.

I personally prefer any number of variations on teapots. Testing Teapots, Teapots Inc, Tardis Teapots, Bob Testoramateapot, you name it. It means that I can do a rather straight-forward string query to identify my test data. It also meets title case and camel case requirements, so it doesn't look funny on a report or a printout.

However, there are times when you probably **should** use clear, non-silly language to indicate that something is test data. A statement like "TEST TEST PLEASE IGNORE" is a good sign that the transaction is test data and probably should be dropped. For instance, you're integrating with a live credit-card processing site? Not a great time to use "Alice Jones" as your test data. Better to use "TEST TEST TEST" so that the other end knows what they're dealing with.

I love teapots. What silly test data do you use?