---
layout: post
title: "Don't just do what Google does"
date: 2014-10-10 17:00
comments: true
published: true
author: Tim Hordern
categories: 
- technology
- product management
- technical architecture
description: "Don't just copy what Google does unless you're willing to commit Google-sized resources"
keywords: ""
---

A lot of startups think that they need to do what Google does. So much so that there's even a book
about it: [What Would Google Do?: Reverse-Engineering the Fastest Growing Company in the History of the World](http://www.amazon.com/gp/product/B001NLKYT2/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B001NLKYT2&linkCode=as2&tag=timhor0e-20&linkId=LMISTIQNVTCYLCPC)

[{% img center http://ws-na.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B001NLKYT2&Format=_SL110_&ID=AsinImage&MarketPlace=US&ServiceVersion=20070822&WS=1&tag=timhor0e-20 %}](http://www.amazon.com/gp/product/B001NLKYT2/ref=as_li_tl?ie=UTF8&camp=1789&creative=390957&creativeASIN=B001NLKYT2&linkCode=as2&tag=timhor0e-20&linkId=LMISTIQNVTCYLCPC)

In some ways, it's easy to understand how they end up here. Perhaps the technology idea they have
is going to come to dominate their market so completely that even Google is scared. Perhaps
the business proposition is one where you are going to become a 9, 10 or more digit sized company.

Or maybe your idea is just so weird that the only people even capable of understanding the implications
of your idea work at [Google X](https://en.wikipedia.org/wiki/Google_X).

Whatever the cause, these companies think that because Google grew from [an idea at Stanford using cobbled together servers](http://www.google.com/about/company/history/)
to the dominant force it is now, they too just need to do what Google does and they'll magically
grow as well.

Put another way:

1. We have a bright idea.
2. Google is a place that has bright ideas.
3. We need to do what Google does.
4. ...
5. Profit!

At it's core, this is [cargo culting](https://en.wikipedia.org/wiki/Cargo_cult), which I've
mentioned in [previous](http://timhordern.com/testing-and-design/) [posts](http://timhordern.com/minimally-minimal-minimums/).

The idea is that if we do the same rituals as Google does, we'll see the same great outcomes they
did.

Some typical patterns that startups try to emulate:

**[Google works entirely out of one source code repository](http://paulhammant.com/2013/05/06/googles-scaled-trunk-based-development)**,
*so we should too*.

Yes, and they also got themselves a supercomputer even back in 2009 to have to deal with the
complexity of it. They've spent a lot of time making a *lot* of tooling around pre-commits, as well
as involved a lot of people to analysis, and even built their own build language. Notice how a lot
of that involves building up processes, practices, infrastructure to support an idea.

If you're not willing to commit even a tiny bit of effort to thinking about *how* you're going to
address the extra complexity of working and compiling off one source code repository, then you
shouldn't just blindly do it. If nothing else, be prepared to spend a lot of money buying bigger
hard drives for your developer's machines.

**[Google calls it's HR team the People Operations team](http://www.google.com/about/careers/teams/people-operations/)**,
*so we should too*.

Startups and other types of companies love to have "People" teams because that's what Google does.
But the reality is that mostly the 'People' team
[only comprises Recruitment](http://timhordern.com/recruitment-is-not-hr) and some basic
administration (office management, basic HR). If you're not going to do the legwork to deeply think
about how people work in your organization and you
[just want to copy Google](http://www.thinkwithgoogle.com/articles/passion-not-perks.html), then
just call your team a Recruitment team.

This [New York Times article](http://www.nytimes.com/2014/09/25/technology/exposing-hidden-biases-at-google-to-improve-diversity.html)
and this [Slate article](http://www.slate.com/articles/technology/technology/2013/01/google_people_operations_the_secrets_of_the_world_s_most_scientific_human.single.html)
are interesting because they hint at the thought that Google puts into something. Whether you agree
with their chosen outcomes or not, the fact that they make decision-based data around their
employee's happineess, even hiring social scientists to ethnographically understand and model their
employees, means they go the extra mile.

If you don't think HR needs to undestand what your employees do, or you couldn't see how it's
helpful to have social scientists looking at your culture, then you don't have a People Operations
team.

**So what should you do because Google does it?**

Honestly, that depends on your company. Because it's *your* company and *your* employees and *your*
technical stack. Make the decisions for what feels right for you and your team, considering your
expertise and your future plans for growth.

You can look at what Google has done, or what tools Google uses.

But don't just copy and paste. Learn what they learnt and see if it works for you first.