---
layout: post
title: "Unsuprising Outcomes"
date: 2011-11-19 19:42
comments: true
published: true
author: Tim Hordern
categories:
- testing
- projects
- product development
- product management
- games
description: "Modern Warfare 3 is a great example of a launch-date failure that really failed to meet customers and gamers needs."
keywords: "games testing, xbox 360, xbox 360 games development, call of duty, modern warfare 3, call of duty elite, software releases, testing, launch date failures"
---

I recently pre-ordered the [Hardened Edition of Modern Warfare 3](http://www.ebgames.com.au/xbox360-154293-Call-of-Duty-Modern-Warfare-3-Hardened-Edition-Xbox-360) to play on my Xbox 360.

Modern Warfare 3 is the [biggest entertainment launch of all time](http://xbox360.ign.com/articles/121/1212246p1.html), having grossed $400 million in a day.

Along with the game itself, the Hardened Edition included a 1 year subscription to [ELITE](http://www.callofduty.com/elite), Activision's brand new multiplayer online service. It's intended as a social networking tool coupled with some pretty impressive statistics, driven out of the multiplayer games you play across the Call of Duty series across any platform. Coming with web, iOS and Android applications, ELITE would expand the Call of Duty experience from out of the console.

Addons and DLC are also tied to the subscription, so having a 1 year subscription means I get all the DLC released during my subscription. If you've [prestiged](http://callofduty.wikia.com/wiki/Prestige_Mode) in any other Call of Duty title, you get a token to be used in the [Prestige Shop](http://callofduty.wikia.com/wiki/Prestige_Shop) to purchase in-game benefits, such as receiving double XP or unlocking gear. Having prestiged in three other games before Modern Warfare 3, I had 3 tokens ready to go that I was excited to use.

By buying the Hardened Edition, I also received special [Founder](http://www.callofduty.com/founder) status on ELITE. This gives me a [in-game emblem](http://callofduty.wikia.com/wiki/Emblem), a playercard, weapon camo, clan XP boost and other 'exciting' benefits.

Before the launch, there were huge levels of excitement over both Modern Warfare 3 and ELITE. We, the gaming public, wanted to get into these games and we wanted to play with the ELITE features. This was going to be huge.

There were at least eight products being launched (plus some other components, like console-specific apps):

* Modern Warfare 3 on Xbox 360
* Modern Warfare 3 on PS3
* Modern Warfare 3 on PC
* Modern Warfare 3 on Nintendo Wii
* ELITE website
* ELITE website Founder registration
* ELITE iOS application
* ELITE Android application

{% pullquote left %}
{" On launch day, 2 of the 8 products to launch actually were available. "}
{% endpullquote %}

The core product of MW3 on Xbox 360 and PS3 was available for use and you could play it. The PC version was pretty broken with servers unavailable and you couldn't buy the Wii version in Australia.

There were some issues with the Xbox360 version, not least of which was that it was pretty much a carbon copy version of Modern Warfare 2 (including porting all the bugs that had patched in the previous version). Games were tough to get into, the poor and old netcode meant the result of who shot was often a coin flip, maps weren't designed for the fast-run-and-gun style of games that people have been looking for and were full of strange and unusual obstructions.

But the big one, the one that we hoped might change how we interact with console gaming, ELITE, failed miserably.

To this day, 2 weeks after launch, users are still having issues logging into the ELITE service, let alone registering for their bonuses and founder status. When I tried, I first couldn't register to ELITE, then couldn't login to ELITE, then had to register for an EA account, then had to register for ELITE again, then couldn't login to ELITE, then when I finally got an ELITE account logged in, I couldn't get my Founder status recognised because I apparently didn't have an ELITE account. So I was a [little annoyed at that process](https://twitter.com/#!/mence/status/135117579877486592).

{% img /images/posts/call-of-duty-elite/cod-elite-status.jpg Call of Duty ELITE Status Snapshot from November 19 2011 %}

[Things are patchy still](http://www.callofduty.com/elite/toolbar/status.html), with some users registered, some fully logged in and yet others never able to log in.

There's [no release date for the iOS and Android applications](https://twitter.com/#!/CallOfDutyElite/status/137799264549076992) and they're [still doing stress tests of their servers](https://twitter.com/#!/CallOfDutyElite/status/137355443679928320). I still haven't been able to fully login to ELITE, and I don't expect it to be able for a while. I've gone from being excited over MW3 and the ELITE products to reluctant to spend time battling and wasting my time filling out forms that don't work for products that don't work. Seriously, all I wanted was to be able to play games and maybe check out some stats about how I did. This was something that Call of Duty: Black Ops did in-game, so it seemed natural to assume that's what Call of Duty: Modern Warfare 3 would do. So I, like lots of other gamers, mentally switched off from the hype of MW3.

It looked bad for Activision and the development studio Infinity Ward. They had a huge product to launch, they had a huge audience and they blew it.

So what? There are bad launches all the time, especially for some reason, in games. There are are lots of games that people love and as word gets around, more and more people pile on, the servers crash. Heck, this was the highest-selling entertainment product ever.

But this one was different.

This was different because they *knew*. They'd already launched highest-selling entertainment products before, once with [Modern Warfare 2](http://en.wikipedia.org/wiki/Call_of_Duty:_Modern_Warfare_2), and then they launched the newest highest-selling entertainment product with [Black Ops](http://en.wikipedia.org/wiki/Call_of_Duty:_Black_Ops).

So it wasn't a shock.

{% pullquote %}
But if it wasn't a shock, then it means they didn't test their product at the realistic scale to which it would be used. It means they didn't plan for having their users use their products. It means no-one asked the question, {"What if every single one of our potential customers logged into our service on Day 1?"} and no-one listened. They didn't have the capacity, they didn't have the servers ready to go and they didn't have ways to scale up rapidly (whether via an external VPC or [EC2](https://aws.amazon.com/ec2/) or ~~something~~ anything). They didn't test the individual servers (registration and login systems were hit the hardest day 1). Large products with large userbases that want your product *now*, will inevitably crash on release day. You can build in capacity for *everyone* coming in at once, then scale it off when usage drops off.
{% endpullquote %}

Testing isn't just about making sure all your links work on your website. It's about planning and asking if we're able to make our product work as our users want it to in a cohesive manner.

It's about ensuring we deliver what we promised to our customers at the scale that we promised.