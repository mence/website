---
layout: post
title: "Test Strategies of Doom"
date: 2014-02-26 19:00
comments: true
published: true
author: Tim Hordern
categories:
- testing
- agile
- product development
- product management
- business
- projects
description: "Don't write giant documents before you start testing. Start testing and capture your documentation in the right way."
keywords: "software testing, agile software testing, agile testing, agile QA, software QA, trends in testing, waterfall, waterfall hell, documentation hell"
---

### Documentation Hell

For many years, I was a tester in a [waterfall](http://en.wikipedia.org/wiki/Waterfall_model)
environment. The organisations that I worked for followed a pretty standard way of delivering
testing during a software project.

Firstly, someone would start writing a large test strategy up front (somewhere between twenty to a
hundred pages long), either immediately once the project started or during a structured analysis
phase.

They, or another person, would then write a large test plan up front (somewhere between twenty to a
hundred pages long), which would describe and list the test cases for every phase of the project.

Then, a bunch of (subordinate) people would then have to flesh these generic test case descriptions
out into actual test cases. These test cases would have varying levels of detail, depending on how
much the person writing them cared and would be intended as a series of prescriptive steps to
blindly follow.

After this point, the people involved would usually leave and move onto another project, as they
'focused' on analysis only.

The project would then enter one of the described phases of testing. The manual testers would arrive,
pick up the test cases prepared earlier and blindly execute them. It wasn't really expected that
they needed to understand the context of the feature in test, to deal with real customers and have
a feel for their needs, to have a real grasp of the architecture of the system, let alone look at
the code.

They would blindly raise defects in a horrible tracking system like Quality Center, a developer
somewhere would fix those defects, and the cycle would begin anew.

The test strategy usually calls for having any number of meetings about the progress of testing,
status checks, and defect prioritisation meetings. And because the test strategy says so, the team
blindly follows.

On a large enterprise transformation, involving potentially hundreds of people, the timeline for the
first few activities required up to 6 months of effort, writing huge documentation of often hundreds
of pages. The test strategy, test plan and test cases all need to be written, usually to meet a
documentation criteria, to meet an enterprise standard for delivering projects, and to show that
all those people were worth paying extremely high consulting fees.

This is before you've even started testing.

After all of the test cases had been finished for the phase, a bunch of fixes would happen, and
another cycle would start to retest everything (not just the things that had changed). Regardless
of whether the software actually solved any problems, if all the test cases were finished (or at
very least the amount of defects was minimised), then the code was shipped in a giant at-once
legacy migration to a new system.

Now imagine you're a tester who's turned up just as the actual testing execution's about to start.
*The horror!*

This process engenders the very worst fears of good testers (and good teams):

* Having managers dictate what to do
* The people who design the work aren't the ones who have to do it
* Any number of people absolving themselves of the risk of failure
* Doing manual work instead of automated work
* Gathering no feedback on whether what you're building works
* Not testing the right things
* Not adapting your approach to testing as you go
* Worst of all, risking that you're building entirely the wrong thing

Why do organisations and teams do this? It's because the organisation wants to avoid risk. In this
mindset, having an overly documented process means that the risk has been removed from the execution.
Execution should be a piece of cake, right? In this world, the test team's feedback introduces risk
to the end of the process that the 'analysis' experts can't cater for.

But in my experience, locking down testing in a document-driven approach doesn't reduce risk, and
doesn't build confidence in your testing activities. It just means that you've locked down a guess
that you took ages ago about your future testing activities.

In fact, this means you're *ensuring* failure by codifying that risk into documents, and blindly
sticking to them regardless of what you discover later on.

### How to spend your testing time

So what should you do? Should you never have a test strategy and all these test plans at all?

There are some good reasons why you should prepare test plans, especially in large enterprises. It helps
you set expectations, set the scope of the work and establish the resources required. But it should
also be a living document, written by the people who are doing the testing, and it should not
hold you back from doing any testing. A nice, small concise document might help you get started.

But don't waste 6 months of time just to write documentation. You could be:

* defining what quality means to the team and the customer, not just a laundry list of features.
  Don't build a list of features, work out what problem you're solving and make that a quality
  experience
* defining clear acceptance criteria
* building automated acceptance tests
* building great automated unit tests
* running real world user testing (it helps get your team out of the office!)
* runnning code reviews
* building an automated Continuous Integration system to make getting code delivered to production
  smoother and faster
* conducting exploratory testing to see what edge or corner cases you missed, and building tests to
  ensure they're checked for every single time you push new code
* conducting performance testing, and better yet building automated performance tests
* conducting security testing
* scaling your tests against real-world sized traffic, preferably in a [blue-green](http://martinfowler.com/bliki/BlueGreenDeployment.html)
  environment. Another way of doing this is have a production-sized environment against which you
  mirror your production traffic.

One more key thing:

You let the testers test. Don't dictate to them what to do, enable them to help the team build the
right things.

### Awesome, then I don't have to write any test documentation!

Woah, wait a second. It's a pretty standard misconception that agile means no documentation. People
read the [Agile Manifesto](http://agilemanifesto.org) and see this line:

> Working software over comprehensive documentation

and think this they don't need to write documentation:

> Working software <strike>over comprehensive documentation</strike>

We should actually translate this as meaning that **both** are important:

> Working software **over** comprehensive documentation

You need to do *both*.

You *should* build working software **and** build the right amount of documentation to *help* you
build working software.

So: **build the documentation your team needs**, not just documentation for documentation's sake.
It also doesn't need to be a giant Microsoft Word document, or huge Excel spreadsheets of test cases.
You should be doing all those things I mentioned before, as well as continually shipping working
software and seeking *real* feedback from *real* customers [1]. They are actually part of your test
documentation. Risk managers and auditors love you when you can demonstrate that you have highly
tested code (tested thousands of times by your CI system), against any number of measures and any
number of environments. Your customers love it, because they know they've paid for the right thing.

You can also define your testing beliefs, strategy and plan in a simple light-weight manner.
Some really simple examples:

* writing your beliefs on the wall next to the team
* writing your test strategy as a small README or wiki document in your code
* writing your test plan as a series of executable specifications and tests

The worst thing you can do is think that
[project success is determined by having the right documentation](https://en.wikipedia.org/wiki/Capability_Maturity_Model_Integration).

The best thing you can do is build the *right* products with **the documentation that helps the
team building those products**.

<small>
*[1] Crazy idea: you can video tape your customer feedback sessions and they become your test results.
It's some of the best test results you'll get.*
</small>