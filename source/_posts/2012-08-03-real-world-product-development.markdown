---
layout: post
title: "Real-world Product Development"
date: 2012-08-03 12:30
comments: true
published: true
author: Tim Hordern
categories:
- design
- product development
- product management
- business
- projects
- products
description: "Great product development should focus on solving a single problem that your customer(s) have and solving it completely. Have a laser focus on what you want to achieve and be really nitpicky. Polish that one thing until it's seamless."
keywords: "product development, product design, product teams, best-practice product development, world class product development, best product development, agile product development, Apple way, solve customer problems"
---

###TL;DR###

If you're doing product development, then you should focus on [solving a single problem that your customer(s) have, and solving it **completely**](http://timhordern.com/fix-one-problem-and-fix-it-completely/). Then find the next problem, and solve that one. Excellent product development in the real world (where we don't have forever or unlimited funding) requires a laser focus on what you want to achieve (fixing that *one* problem) and being really, really, **really** nitpicky. Polish that one thing until it's seamless.

###But I don't build products, I'm a developer / project manager / tester / designer / dragon / wizard / unicorn###

{% img center /images/posts/real-world-product-development/wizard.jpg But I'm a wizard %}

In enterprise software development, we're pretty used to running projects for things. We have projects to implement a new system. We have projects to develop new reports. We have all these weird and wonderful hierarchical structures to manage and control projects and their teams. Somewhere along the way, we forgot a key fact: projects aren't just a cost centre accounting measure. They are about building something for someone. Although we call it a project, as though it's some sort of home handyman gig, software development projects are really a team of people building a product for someone (or a range of people), and they just happen to use software as their materials. Enterprises, governed by classical project management principles derived from concepts originating in the Victorian era, think that just because we found a nice way to financially record and measure software development, that projects that build software are straightforward things to be managed away.

{% img center /images/posts/real-world-product-development/app-production-line.jpg An app production line %}

If you follow the train of thought in old-school project management, then building things is suuuuuper easy. Your BAs give you a big list of requirements to meet, you get the developers to spend some time making & testing software that matches those requirements and et voila, profit! If you're in tune with the hip development crowd, you can add in Agile (with a capital A) and bam, you're building stuff at light speed. This is fine if your project works in a bubble in an academic paper. It completely fails to grasp the concept that all projects have customers who may pay you directly (or indirectly) for the result of that project. Meeting their needs in a product is actually the purpose of your project. In fact, if you are trying to be [agile](http://www.agilemanifesto.org), you should be very reactive to what your customers are after and collaborate with them to ensure you build better software.

Here's a reality check for you: product development is *hard*. Projects fail all the time. The process of building the software can be a complete success from the project management perspective, and yet be an absolute disaster from a perspective of meeting and delighting your customers. So shouldn't projects get really good at delighting customers?

{% img center /images/posts/real-world-product-development/customer-delight.jpg Delight %}

The result of product development is everywhere. We use products for the vast majority of our lives, and someone else built them. Think about it: the house you live in, the building you work in, the chair you're sitting in, the desk you sit at, the clothes you wear, the food you eat, the cup you drink from, the phone you use, the websites you visit, everything was designed in one way or another. Maybe it was designed by a team, or a person, or maybe it was designed by you. They had to think up what it was that you wanted out of that product and solve a whole series of challenges so that you could use it: analysing the problem, designing a solution, building something, then building lots of them, getting them to you and then convincing you to buy it. As the customer of those products, you also went through an evaluation and selection process to say, this product solves a problem for me - I just may not have known it was a problem until after it was solved for me.

###Here be project dragons###

The three main pitfalls that most product teams (or projects if you want) fall into when you strip away a lot of noise are:

**1. Not knowing what the problem actually is**

This is usually an unscientific problem, or where the problem hasn't been very well defined through observation or data. Be wary of product managers who can't prove scientifically what the problem is, why it's a problem, and what solving it achieves. "We're doing this because we have budget" is horrifying (if you really want to do something because you have budget, buy every developer a better monitor and a really nice task light). "We think it's an opportunity" is better but isn't the full story. This is what the [Lean Startup](http://theleanstartup.com/) is trying to solve with the MVP process - not trying to build *lots* of products but getting products out fast so that you can get feedback on them *quickly* (through a series of pivots) so that you can find out what the problem you're trying to solve *actually* is. Don't pivot towards doing thing A or thing B because thing A is selling well, or thing B has lots of buzz; you should pivot because you found a problem that people need solved (even if they don't know it yet).

**2. Feature bloat**

This is a symptom of trying to do too much at one time for one project. [ERP](http://en.wikipedia.org/wiki/Enterprise_resource_planning) projects are notorious for this. They are the epitome of doing *all the things*, because such is the nature of the ERP system (however, it doesn't mean you can't build a good product using an ERP system - just that traditionally, ERP projects fall into this pit of doom). Restrict yourself to one limited problem at a time. This is really, really hard for huge enterprise organisations to understand, but it's actually counter-intuitive to do big projects. Small products solve a  problem fast - you can move on and solve another! Do this repeatedly, and your organisation becomes leaner and more adaptable.

{% img center /images/posts/real-world-product-development/all-the-features.jpg Implement ALL the features %}

**3. Integration hell**

You're told you have to link your system with something else. The restrictions or requirements of that other system or some other organisation mean you suddenly have to cater for a range of other things that you never originally planned to. Don't plug into something unless you absolutely have to. Don't plug into something unless it clearly solves a problem for a customer. If you need to boil it down to sales or money or customers, do it. Lost focus burns product teams.

{% img center /images/posts/real-world-product-development/integration-hell.jpg Integration hell %}

###How do you make it easier?###

If you speak to a lot of project managers, especially PMs from large enterprises, the answer to the problem of product development being hard is more resources (usually in the form of more people at more cost). This is the natural response of someone trained in a production-line mentality of management: resources go in, products come out, profits roll in. Ergo, more resources should go in, more products should come out and we should earn more money! This solution might have worked before, and it might still work again, but it is by and large more of a correlation effect than a causation effect.

Dear PMs, here's a better way: don't throw more people at a problem. Throw the *right* people at the problem, give them whatever tools they demand, and let them rapidly experiment and support them doing so.

But if you're a product team, how can you improve what products you build?

There are two broad things that you should do:

**1. Maintain a laser focus** - *Like a laser, you need a really intense, really precise focus to apply the maximum force to a small area.*

{% img center /images/posts/real-world-product-development/lasers.jpg Frickin' lasers, man %}

- Work out the one customer problem you are solving *right now* in this product / release / iteration. I've [written about it before](http://timhordern.com/fix-one-problem-and-fix-it-completely/) - it's the Apple way, but it applies to every project. Keep the one customer problem right in front of the team. Write it in giant letters on a board so that everyone can see it at every moment. Everyone needs to consider whether what they're working on right now for this release/update/application meets that need.

- Constantly verify that what you just built solves that problem. Trial, trial and trial again. Argue. Demonstrate to your customers, to the public, to your grandmother. Articulate how what you just built solves that problem for *them*.

- Constantly ask yourself: does this feature we're thinking about solve the one customer problem that we want to solve right now? If not, it's a future backlog well away from the current team.

**2. Nitpick like crazy** - *Sweat everything until it's perfect*

{% img center /images/posts/real-world-product-development/nitpicking.jpg Misaligned dots will drive OCD people crazy %}

- Constantly ask yourself: this new thing that we're doing, what does it change for our customer? Is there a better way to solve the problem for the customer? Will they love this solution?

- Sweat every pixel, every colour choice, every design. Sweating every function, every integration point, everything. That laser focus allows you to be really picky about the quality of the product that you're delivering. Account for this effort upfront. But don't rush it as well - get it right. Know what your customers value and sweat that so that it's perfect.

Over time, you'll solve more and more problems as you release more and more updates or applications. And you'll get really good at solving problems that your customers are having.

###But I'm not a ...###

To be honest, there's no perfect skillset for this.

{% img center /images/posts/real-world-product-development/friends.jpg Why can't we be friends? %}

Designers are really good at coming up with new offerings, based on their empathy with customers. They're more likely to elicit the right responses from customers, based on their user research experience, and they know how to come up with really neat solutions for customer issues. But they struggle with bringing these offerings to market, and convincing customers of them.

Business people are really good at seeing market opportunities and pricing the value customers put on those opportunities. But they struggle with designing new, better solutions for customers, and they often struggle with scaling that to the masses.

Technical people are really good at seeing how to bring a concepts to life, and scaling production. They're not so good at seeing the wider picture, or seeing market value in things.

Excellent product teams will work together and combine all these skillsets. Excellent product teams operating in the real world will incrementally solve real, valuable problems one by one. If you don't know a skill, learn it. Teach your fellow team members. Learn from others, and share that knowledge.