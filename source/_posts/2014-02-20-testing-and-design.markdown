---
layout: post
title: "Testing and Design"
date: 2014-02-20 19:00
comments: true
published: true
author: Tim Hordern
categories:
- testing
- design
- agile
- product management
- XD
- user experience
- cargo-culting
description: "Testing needs to change to link together with design, both through continuous design and continuous integration."
keywords: "software testing, agile software testing, agile QA, software QA, trends in testing, XD testing, experience design, XD"
---

### Testing is Testing

For a while now, I've struggled with the positioning of software testing in the world.

Whilst I believe deeply in the need for quality in the products and services that we build, I have
felt hamstrung by the auspices of being a Tester (with a capital T). Now that I am in the United
States, everything is QA-this and QA-that. Even worse, as I [mentioned in a previous post](http://timhordern.com/from-challenges-to-issues/),
there's a tendency at some workplaces to refer to testers as a role (eg. the QA should do this work),
as though they were [a second class citizen](http://www.youtube.com/watch?v=uqg7Ow4SNk8).

Unfortunately, I’ve struggled with the idea that testing should be considered last in a product’s
life. Testing is often treated as the last hurdle for a product to pass, rather than the true
validation of a great product. Strangely enough, a product’s success (or failure) has often long
been determined by this point. Functional validation either by a tester often flags concerns that
could have/should have been resolved directly with customers, rather than at the end of a phase or
iteration. It's the worst of [the waterfall methodology](http://en.wikipedia.org/wiki/Waterfall_model)
brought to Agile.

Developers have been sold on the idea of [Test Driven Development](http://en.wikipedia.org/wiki/Test-driven_development),
building in unit tests to develop a test harness. It's validation, but unit tests are only of part
of the development process. The [Test Pyramid](http://martinfowler.com/bliki/TestPyramid.html)
denotes a proportion of unit, service and UI tests, and [Continuous Delivery](http://continuousdelivery.com/)
implies automation utilising this pyramid. A dangerous point for any project is the point at which
the pyramid loses its layers and becomes a trapezoid (or just a single layer). Worse still, the
unique mindset of a tester performing [Exploratory Testing](http://en.wikipedia.org/wiki/Exploratory_testing)
is considered the least necessary part of a product’s development process. A non-automated way of
doing anything is anathema to a programmer and misunderstood.

A lot of the test methodologies and frameworks that we take for granted today have been born from
development methodologies and the developers who built those frameworks. These are very, very smart
people and I respect them deeply. But coming at product development from a software development
process implies a certain mindset (more engineering than art) and a fundamentally different view of
what your customer perceives of your prouct.

It's important to recognise that in all industries (software or otherwise), we **absolutely** need
testers. Whether a product is digital or physical, testing is needed to make sure that a product
meets the requirements of its customers. Poorly tested products, particularly those rife with bugs,
feel shoddy and present a horrible user experience. They burn the user's trust in the product and
their trust in the company that built it.

### Your Customers Dictate Quality, No-One Else Does

I guess the hardest thing for me to accept has been that a substantial proportion of developers and
product managers, subconciously consider testers a barrier to building products. It's hard to accept
that we are often viewed as destroyers of progress and not as contributing to progress. A hurdle to
overcome on the pathway to success, rather than a necessary ingredient to success. And it's not a
one-way street - a lot of testers have this idea that they are the sole gatekeepers of quality,
fighting against the evil developer hordes. The resulting mindset in some testerse is that they are
there simply to break things (look at any number of job postings for QAs and they'll mention that as
a key requirement/desire).

<blockquote class="twitter-tweet"><p>Get rid of this notion that QAs are the “GATEKEEPERS” of quality. The entire team should be fully aware of the state of the app.</p>&mdash; Hiyasmin (@hiyasmind) <a href="https://twitter.com/hiyasmind/status/215928764675276801" data-datetime="2012-06-21T22:06:43+00:00">June 21, 2012</a></blockquote>
<script src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

The attitude that testers are the ones on the team who measure quality is just _dumb_. The **whole**
project team are the gatekeepers of a product's quality, and it's our collective job to make products
that solve something for our customers.

I think my definition of where quality is derived from has changed substantially. Right now, what we
term as requirements or acceptance criteria are factual not experiential (eg. component A must do x,
B must do y, C must not do z). A better way to treat quality would be to consider:

* Can we think of ways to capture feedback about a user's feelings or experiences?
* What are our underlying requirements that go towards whether component A, B or C are actually
  satisfying our customers needs, wants, desires?
* It's easy for our technical mindsets to get caught in the trap of optimising *how* it works, not
  optimising *that* it works. Our customers don't care necessarily how it works, just that it works
  (remember, there are any number of websites out there doing things the 'wrong way' to create
  useful, beautiful, immediate products). It's easy to get caught up in the Hacker News bubble and
  worry about optimising the tech stack for the latest language.
* In our development mindset, we can often mistake functional performance for success. How can we
  find a better path to defining success that isn't functional performance?

### Design as a new path

How could we build a closer, tighter feedback loop to validating quality?

People are already exploring linking [Continuous Design and Continuous Delivery](http://katelinton.blogspot.com.au/2012/02/continuous-design.html).
It's not going to be an easy process - Continuous Delivery comes from the development-methodology
mindset and [Continuous Design]([Continuous Design](http://en.wikipedia.org/wiki/Continuous_design))
comes from a design-thought background. We should consider a new cohesive view that draws from the
two mindsets.

Importantly though, I think we need to distance ourselves from the development mindset. Tools such
as responsive design were not built from a perspective of what are or customers doing (ethnography)
but from a development overhead perspective (minimising cost). Careful evaluation of consumers would
see that mobile use was on the rise, and that products would have to adapt to changes in screen size,
content absorption, locations of content consumption and that a single design would help that.

Designers might have observed that but they faced the question of how to respond appropriately.
Testers definitely saw that (particulayl when they were forced to suddenly test on a *lot* more
devices than previously) but they often are at the back of the product development cycle (that last
gate problem again) and the end of the development cycle/iteration (whether in a waterfall or an
agile environment). But the question here is, what *else* are we missing? What other tools or ideas
should we be developing and using to address different kinds of questions or challenges?

For product teams and their companies who have just come across the idea of agile, having read the
[Agile Manifesto](http://agilemanifesto.org/), it's easy to fall into a [cargo cult](http://en.wikipedia.org/wiki/Cargo_cult_programming)
mentality of slavishly adopting Scrum and thinking that, "hey, now we'll succeed!". Not to mention
that design itself is a traditionally non-agile environment, based around 'spec' driven engagements.
There are some new patterns emerging, like the [Lean Startup](http://theleanstartup.com/) methodology
as proposed by [Eric Ries](http://www.startuplessonslearned.com/). The Lean Startup is a great start,
but doesn't really provide us with the whole team structures to make it happen.

I think the real answer lies somewhere in the middle. I'd love to attempt emergent product design
and development, like an evolutionary system, building products based on the environment that they
will exist in, rather than still requiring the 'spark' of a concept. Building upon the ideas of the
Lean Startup, we could ensure that fast validated feedback is coded into our product and it responds
accordingly. [Jeff Patton](http://www.agileproductdesign.com/) encourages the idea of rapid, agile
product development, which I think is a great way to do it. It can be a very lightweight way of
determing the right product. Nordstrom's Innovation Lab tried something like it with their in-store
development lab:

<iframe width="560" height="315" src="http://www.youtube-nocookie.com/embed/szr0ezLyQHY?rel=0" frameborder="0" allowfullscreen></iframe>

But no matter what methodology or structure we come up with, it's clear that the old silo-based team
structures aren't working. We're losing out on valuable information and opportunities through role
definitions that aren't valid any more.

Remember, it's not about being a developer, or a designer, or a tester. It's about bringing
different experiences together to build the right products.