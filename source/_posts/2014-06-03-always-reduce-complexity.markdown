---
layout: post
title: "Always reduce complexity"
date: 2014-06-03 20:00
comments: true
published: true
author: Tim Hordern
categories:
- startups
- teams
- product development
- product management
description: "As startups grow, they need to reduce complexity."
keywords: "startups, complexity, growth, agile, processes"
---

> "It could be worse, it could have been a product we built."

> A: "Why did you just add that whole function without reading any of the code there?"
> B: "I got it done. It's QA's problem now. /shrug"

> "Oh god, the {Widget Team} just changed their build process and didn't tell anyone. No wonder my
  environment has been broken for days!"

> "No-one understands how that job runs. Don't worry about it, just make the change. </shrug>"

> "Hey everyone, we just added {random step} to all the machines to try something. We're testing it
  out, we hope nothing breaks!"

### You are innovating to remove complexity, not innovating for new complexity

Startups, your job is to reduce complexity, not just rebuild it from the ground-up.

If you do not explicitly reduce complexity in your product, your tech stack, your company, your
organisation and your team structures, you will end up in a horrible workplace. Remember those old
school enterprise companies, full of bloat and waste, that nobody wants to work for? Hey look,
that's you!

Just because you are given the freedom to choose your technology stack or your office setup, that
doesn’t mean you should go crazy and rebuild all the things.

The only difference that actually separates a startup and an "enterprise" company is financing
relative to growth (is there a metric for this?)

If you play with multiple variables at a time, you can expect that you are adding complexity. And,
guess what? That's okay. Just recognise that you're adding that complexity. Unchecked complexity
grows like mould - left unchecked, your beautiful house will turn to a horror house.

Sometimes you might want to experiment, and to do so, you have to do something in a poor or
half-assed way. Just don't make it so that your startup's approach is consistently half-assed. Don't
make it a habit.

### So what should you do?

If we pick a typical startup and look through their timeline as they grow:

#### <1 Year:

Things are very fluid. You're probably reducing complexity automatically as you try to find
product-market fit. There's little reason or time to add complexity. It's Lean Startup all the way.
Pretty much everything is driven through Google Spreadsheets and Ruby on Rails (or some other fast
extensible framework).

If anything feels difficult, or takes too long, you can circumvent the process by talking directly
to that person or quickly hacking something together. Just don't adopt a process or a tool because
it's hot in the Bay Area - that's adding an extra variable for no reason.

#### 1 - 2 Years:

You've settled on a business, product and technical approach. Congratulations, that's awesome! Now
comes a great opportunity to reduce some of that complexity you've accrued in the last year.

Teams begin to settle on processes and tools that they feel comfortable with. Things are still
pretty open - it's a small team, everyone talks to each other all the time, maybe you just got a new
office.

Good teams will recognise that they made some compromises in the way that they worked up to this
point. You should begin to trade-off constantly shipping new features for regularly streamlining
their work.

Really *great* teams will ask themselves, if I had to rebuild this from scratch, how would I do it
and what would I change? How long would it take? If it's under 1 month, you should park all other
work and just do it. Remember, all you're actually doing is replacing your crappy prototype that you
built for demos with a real production thing. How should that behave?

For product teams, get out of the office and ask yourself what's working, and what could be better.
Conduct a retrospective and ask yourselves what's an action you can take immediately to reduce
complexity.

Begin to instil a culture of continuous improvement ([kaizen](http://www.timhordern.com/kaizen)): if
you can reduce the complexity of something (a document, a line of code, a wiki, a system) whilst you
are working on it, do it.

Don't be afraid to start documenting things - a central knowledge base[1] is very helpful. Remember
that things get stuck in email, so put things in wikis. Complexity held in someone's head or in
someone's email account is not valuable to anyone.

#### 2 - 5 Years:

Okay, if you haven't begun the processes of regularly reducing complexity, then things get harder.
You've added a lot more people, and they have no idea why you guys made those decisions or built
that thing that way. To any outside observer, things are beginning to bulge at the seams.

Startups that haven't fixed anything see themselves go through "tool hell". What's that? It's the
process whereby they blame the tools, not themselves for their problems.

> "Oh we tried using {team collaboration tool 1}, but everyone hated it. So we switched to {tool 2}
  and then {tool 3}, they sucked too. We even tried agile for a week. It sucked. But it's better
  than {tool 1} - the other guys are still using that."

Stop blaming the tools. Recognise that the problem is the complexity accrued: in your teams, in your
organisation, in your technology stack. Here's the confronting part for startups. This is often the
point where VCs want to see the hockey-stick growth: you're being pulled to do something, anything
to do more stuff. So switching tools and processes makes it look like you're doing something. You're
actually avoiding the issue. Constantly switching tools and processes is churn that doesn't actually
help you reduce your complexity. Blaming the tools as the reason why you can't get things done is
akin to blaming your credit card loyalty scheme for why you blew all your money on new clothes.

You really should begin to break apart your architecture and structures. You will need to undertake
big projects to do so. You are going for modularity and a reduction in complexity. There will be
multiple people working on multiple things at any time - build an environment where they don't
clash. Use a systems thinking approach to redesigning your organisation and architecture. Adopt
[continuous integration](http://martinfowler.com/articles/continuousIntegration.html). Aim for
[continuous delivery](http://martinfowler.com/delivery.html).

A great benchmark is an "elevator pitch for everything". If you couldn't come up with an succinct
enough description of a system or a process that it could be called an 'elevator pitch', then it's
too complex. Break it apart. Too business-y for you? Think of it as a
[README](https://stackoverflow.com/questions/2304863/how-to-write-a-good-readme)
[for everything](http://robots.thoughtbot.com/how-to-write-a-great-readme).

Hire people who are good at helping you with reducing complexity. Listen to the new people you've
hired. Don't put them into the mode of just 'doing more stuff'. The worst thing you can do at this
point is just add more people to further increase your complexity.

Don't just look internally - your products are probably doing well at this point. But what steps
could you remove for your customers to create an amazing experience? Removing complexity helps your
customers get their tasks done.

#### >5 Years:

You're a company now. You have a lot of people, a lot of processes and a lot of complexity. If you
haven't removed complexity, it's going to be very difficult.

If you're only realising that you have accrued a lot of complexity here, you're already in the
weeds. Things break all the time. Problems in one department affect whole other teams, and it's very
hard (almost impossible) to react quickly to change it. Congratulations, you've built an enterprise
without any of the vertical scale, experience, or money that an enterprise has.

To be honest, the only changes that really work at this scale are big projects with radical
transformation. You'll end up throwing away a lot of your old systems (and you really should).
Sorry, but you're not a 'cool startup' any more.

### What should you never do?

* **Treat code as a precious commodity to hoard** - It's okay to start over. You don't need to pick
  up something that was last worked on 2 years ago just because it's there.

* **Never put hack projects into production, without rebuilding them as a production product** -
  Startups are terrible for this. Hack days are *fantastic* for generating new ideas *and* rapidly
  building prototypes. It's something about the opportunity to work on something new in a
  time-pressure situation that generates great outcomes. But that's all that they should be:
  prototypes for a demo. If you love the idea, keep the people that built it together and tell them
  to rebuild it for production[2]. Ask them what they would do differently. That's the product you
  can then put into production.

* **Never build upon hack projects** - Worse than the previous idea is extending hack projects. This
  means that the idea is doubly diluted, and doubly unready for production.

* **Never blindly build upon something without researching what was done before** - The art of being
  a good software developer, a good team member, a good product person, a good designer, a good
  business person, is understanding context. Do your research and find out what happened before.
  Then you can understand the size of the change you are making, and if it is time to rework it
  rather than just extend it[3].

### A final note

So, what have we learnt? Complexity is **bad**. It *can* be managed, but left unchecked it can
absolutely kill a company's culture, and it's products. If you want to want to build a great place
to work, you must build a culture where complexity is ruthlessly questioned in an open dialog and
time is allocated to getting rid of it.

### Footnotes

1. Chat rooms are not good documentation. Wikis are better. The best documentation is written like
   you're writing for an open source repository: it's helpful to newcomers, it explains the
   decisions made and it explains how a newcomer can contribute. Supplement this with videos of your
   oral history (record every talk, every project kickoff or demonstration) and make it an archive.
   Someone who is trying to understand why all this complexity exists shouldn't have to read
   thousands of lines of code and chatroom logs to understand decisions.
2. I think a great compromise is have 2 days for a hack day: form a team around an idea, build
   something, demo it. Then following the demo: discuss which ideas would be great in the real
   world. Rebuild those ideas from scratch for a week (this means proper designs, automated tests,
   scaling, the works).
3. A lot of product managers and brand managers are really *really* bad at this. Why? Because
   they're incentivised (and it's easier) to just add a new feature to a product rather than remove
   one. Or rework the way it operates under the hood for no benefit. Worse, this approach leads to a
   belief that the complexity is a necessary requirement for the role. A great example is IDEO's
   [Bloomberg Terminal Concept](http://www.ideo.com/work/bloomberg-terminal-concept). IDEO
   redesigned the Bloomberg Terminal to make it simpler and easier to use for experienced *and*
   newcomer traders, and to remove complexity. It was
   [rejected completely](http://uxmag.com/articles/the-impossible-bloomberg-makeover) so that
   traders could maintain an artificial barrier to entry. Don't listen to them: complexity **should
   never be a status symbol.**
