---
layout: post
title: "The New Retina World"
date: 2012-03-08 09:38
comments: true
published: true
author: Tim Hordern
categories: 
- apple
- ipad
- iOS
- mobile
- technology
keywords: "Apple iPad, Apple iPad 2, Apple iPad 3, iPad Retina display, Post-PC world, XCode, iPhone, iPhone 3G, iPhone 3GS, iPhone 4, iPhone 4S, Developing for iOS, iOS Development, responsive design"
---

With the announcement of the new [Apple iPad](http://www.engadget.com/2012/03/07/the-new-ipad-is-official/), Apple has created another resolution for iOS developers to consider. The 2048x1536 pixels in the new iPad looks amazing but forces developers to create yet another size of images for their apps.

As it stands, if you're building a Universal App for iOS, you'll need to cater for:

* 480x320 in the [iPhone](http://en.wikipedia.org/wiki/IPhone#Model_comparison), [iPhone 3G](http://en.wikipedia.org/wiki/IPhone_3G), [iPhone 3GS](http://en.wikipedia.org/wiki/IPhone_3GS) and [iPod Touch 3rd Generation](http://en.wikipedia.org/wiki/Ipod_touch)
* 960x640 in the [iPhone 4](http://en.wikipedia.org/wiki/IPhone_4), [iPhone 4S](http://en.wikipedia.org/wiki/IPhone_4S) and [iPod Touch 4th Generation](http://en.wikipedia.org/wiki/Ipod_touch)
* 1024x768 in the [iPad 1st Generation](http://en.wikipedia.org/wiki/Ipad) and [iPad 2](http://en.wikipedia.org/wiki/IPad_2)
* 2048x1536 in the [iPad 3rd Generation](http://en.wikipedia.org/wiki/Ipad)

Whilst it's still feasible for developers to maintain 4 sets of resolutions (an iPhone-size, an iPhone 2x-size, an iPad-size and an iPad 2x-size), it's quickly becoming a bit of a headache, especially if your UI is likely to change a lot or if you're building a game that requires textures, sprites, etc. This also leads to a huge increase in download size for apps. For some apps, this will tip them over the over-the-air limit for downloads and may reduce potential customer installs ("Oh, I can't install this right now? Screw it."). Apple recognised that this could be an issue by [quietly increasing the limit from 20MB to 50MB](http://www.macrumors.com/2012/03/07/apple-boosts-over-the-air-app-store-download-limits-to-50-mb/) - whether this boost will be enough remains to be seen.

However, as a general statement, it's time to start considering a move to resolution independent graphic sizing. It's happening in the web with responsive design that caters for any range of resolutions or devices and just serves the most appropriate one at any given time. Whilst there are some issues with how images, icons, etc look exactly at certain sizes, at least being concious of a responsive design will significantly reduce the load on your designs and your development.

Aside: Do we now start calling it the Apple iPad 3rd Generation like we did for the iPods?