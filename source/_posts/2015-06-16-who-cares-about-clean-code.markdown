---
layout: post
title: "Who cares about clean code"
date: 2015-06-16 09:00
comments: true
published: true
author: Tim Hordern
categories:
- programming
- startups
- product management
description: "Thought experiment: clean code is one of the least important things for a company"
keywords: "startups, programming, clean code"
---

Here's a thought experiment for Tuesday:

{% blockquote %}
No-one actually cares what your code looks like or how clean it is.
{% endblockquote %}

Now this might be a somewhat controversial viewpoint for me to take, given my background and
experience.

But hear me out. After all, this is just a thought experiment.

As QAs, our primary focus is actually ensuring that a product meets the needs of our users
<small>*[1]*</small>. Now we might often get pulled into manually testing an app, or building test
frameworks, or helping improve code quality, but the very best tested application that doesn't meet
the needs of our users is a failure.

So if you spend days/weeks/months improving your code quality, or rewriting your app's backend, or
implementing microservices, or refactoring a whole bunch of functions, all without creating
something that improves the lives of your users, then what's the point? You've just wasted a whole
bunch of time (and probably had a lot of arguments on [Hacker News](http://news.ycombinator.com)).

A big frustration for me is watching companies and teams of all sizes spend a lot of time talking
about how they'll implement a bunch of features, or how they're going to do a big rewrite, or
implement some new framework, without defining *why* they're doing it. 99% of the time, it's
because a) they got told to build a feature by someone else or b) it's a purely selfish exercise to
scratch an itch or reduce some pain. But it's essentially a waste of salary.

In terms of the most important things you can do:

1. Build a product that let's your users do a [job they want to do](http://jobstobedone.org/)
2. Build a product that removes steps in the process of the job that your user wants to do
3. Design a beautiful/engaging product
4. Make the product scalable
5. Write clean code and infrastructure that helps you with 1-4.
6. ...
7. ...
8. Implement hot framework *x*.
9. Do a rewrite in hot language *y*.

But if you aren't constantly working on at least #1 and #2, you're dead, and everything else is
pointless.

If you want to spend your time learning and building something useful, the best framework that you
could implement is one that lets you [get out of the building](http://steveblank.com)!

Why do you get out of the office? To learn what your users **actually need**.

So stop asking your QA to write code, or automation, or do manual tests. Get them out of the office
and working out what you could be building!

<small>
  *[1] A lot of people would disagree with this viewpoint. Some QAs think their job is about finding
  bugs or breaking things. Other engineers might think that we're just there to write and execute
  manual tests, or write automation frameworks. But *all* of this is a means to the primary job of the
  QA: ensuring that a user can complete the job that they want to do, no matter what context they're
  in or device they use.*
</small>