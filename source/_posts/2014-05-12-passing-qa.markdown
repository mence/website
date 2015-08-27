---
layout: post
title: "Passing QA"
date: 2014-05-12 12:00
comments: true
published: true
author: Tim Hordern
categories: 
- testing
description: "What does passing QA actually mean?"
keywords: "testing, QA, passing QA"
---

Stop thinking of things "passing QA”.

The reality is:

* Everything is always **in QA** - every time you work on the design, write new code, refactor a
  feature, write a test, run an automated build in CI, deploy to an environment, it's in QA.
* Everything is always **passed QA** - every time you changed the design, wrote new code, refactored
  a feature, wrote a test, ran an automated build in CI, deployed to an envronment, it passed QA.
* Every time that you ship code to Production, it passed QA. But it's still in QA because there are
  any number of possibilities that your QA team won’t have considered, or have had time to possibly
  test. Even the tests that you *did* run could perform differently on different devices, on 
  different continents, on different days. So don’t give yourself the false sense of security of
  calling it ‘passed’, like you’ve washed your hands of responsibility.

We continually test, and testing happens continuously. It just looks slightly different at
different points in the code’s lifetime.