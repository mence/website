---
layout: post
title: "No feature has no value"
date: 2013-01-31 20:00
comments: true
published: true
author: Tim Hordern
categories: 
- product management
- products
- agile
description: "Don't estimate a feature as having no (zero) points. Everything has value, effort and complexity."
keywords: "agile, estimation, agile estimation, agile testing"
---

{% pullquote right %}
There's a trend in agile estimation to not allocate estimation points to some stories, especially for brand new teams. I've seen a number of teams going through the exercise expressing {" "there's no development here, so that's a zero pointer" "} or "we're getting this for free if we do this other card". Whilst there is some logic for how teams came to these conclusions, I strongly want to emphasise that there is *always* effort involved in doing something.
{% endpullquote %}

I'm putting aside the conversation about whether points are really valuable or not for a second here. If you do choose to estimate points against stories, which can be a valuable exercise for immature Agile teams to identify the size of work, then you should think about recognising that there's always effort.

It's tempting to only represent development effort in your estimation, especially on teams with a high representation of developers. Better estimation includes the whole range of effort which could include analysis, design, exploratory testing, automated testing, refactoring, customer acceptance or any other number of activities. If you only account for effort, and not what is arguably the primary factor in estimation - customer value, then you are estimating just for what the team feels is the complexity of the task and the work length.

However, if a feature or a story doesn't have strict development effort, teams can often fall into a pattern of assigning zero points to a feature. After all, no-one's doing anything to build it, right? Be wary when you hear teams say "we'll get this one for free" or "you can test this feature at the same time as testing feature x". It may mean they are not considering the full picture.

In choosing to assign zero points to a feature, the team accepts a certain level of risk that there will never be *any* effort or *any* value for the team in completing the feature.

On a recent client, I spent quite a bit of time testing a handful of zero point cards. Whilst this wasn't ideal, what was worse was that we found an odd edge-case [Heisenbug](http://en.wikipedia.org/wiki/Heisenbug) (a bug that appears and disappears when you try to observe it), and had to take even more testing and development time to identify the cause, wrap it in automated tests to ensure we were correctly finding it in our CI build, and then actually develop a fix. Not only had we expended a lot of effort in the testing and development of this feature, it was actually a reasonably valuable feature, lining up an existing user flow to our new product. We completely blew our estimate, and shook our confidence that the other zero pointer cards in our product were actually fine.

###There's always something###

So how should you estimate better? There should be three main areas that a team should consider in estimation.

- *customer value* - if this feature is complete, does the customer derive some value out of it? Is there something that they can say now works (or an existing piece of functionality now works in conjunction with our new product)? There's likely *some* value there otherwise the team wouldn't have identified the feature in the first place.

- *complexity* - is this a complex, unknown thing? Have we done this before? Even if it is existing functionality, is it now wired up in a new way? Higher complexity should have a corresponding higher estimation (and the feature should be played earlier, rather than later from your product backlog).

- *effort for team members* - this should include consideration of every activity a team has to go through in regards to getting the feature through to Done. If the team’s BA and QA have to spend half a day understanding the context of the feature and defining acceptance criteria for it, there's some effort associated with the card. Ditto for testing - if a QA has to incorporate it into their exploratory testing, you've increased the scope for testing and the associated complexity.

If a feature truly has nil value, nil complexity and nil effort, then it's not worth recording and it actually *isn't* a feature at all. If that's the case, then rip up the card and move on. Delete the story from JIRA.

For everything else, there's value. Give it points and estimate fairly.