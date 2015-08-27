---
layout: post
title: "Device Testing for iOS"
date: 2013-01-31 15:00
comments: true
published: true
author: Tim Hordern
categories: 
- iOS
- iPhone
- iPad
- iPod Touch
- apple
- mobile
- testing
keywords: "mobile testing, mobile hardware testing, in-device testing for iOS, testing iPhone, testing iPad, testing iPod Touch, testing mobile devices, do you need to test on a mobile device, why the simulator is not enough"
description: "Make sure you test on a real device when developing for iOS - an iPhone, an iPad and an iPod Touch, with each version of iOS you release for."
---

If you're building an iOS application, whether it's for an iPhone, an iPad, an iPod Touch, or all three, you really should be testing on the *actual* device that you're coding for. Knowing how it actually functions on a device can give you a much clearer feeling of the user experience of your application.

The [iOS simulator](http://developer.apple.com/library/ios/#DOCUMENTATION/Xcode/Conceptual/ios_development_workflow/25-Using_iOS_Simulator/ios_simulator_application.html) and [Instruments](https://developer.apple.com/library/mac/#documentation/developertools/conceptual/InstrumentsUserGuide/Introduction/Introduction.html) are useful tools for identifying bugs and unexpected behaviour earlier in your development process. However, the simuator doesn't always replicate in-device behaviour and it's really important to realise that apps behave differently on each individual device, and under a range of conditions. Unfortunately iOS has become a rather fragmented environment, thanks to the range of devices running iOS (iPhones, iPads and iPod Touches), which means if we want to know the true behaviour of our app on the devices that our customers will be using, we need to check across a range of devices and versions of iOS.

It is possible to automate in-device hardware testing to a certain extent using [outside](http://www.perfectomobile.com/) [providers](http://www.keynotedeviceanywhere.com/mobile-application-testing.html), who have devices hooked up to servers in their data center that you can essentially rent for a period of time, so you could run some scheduled jobs and run your automated test on a real device. They often record the screen so you can see the output of the test later. Should you do *just* this? It's debatable - my view is that if you're going to pay for that service, do the amount of development effort to get it all hooked up, as well as sit there and review screen recordings of interactions, you might as well just buy the device and test it there. Worse still if you're just using these services to 'rent' a device over the cloud for manual testing. You'll soon end up spending the same (or more) than if you'd just purchased a device.

###Isn't Android device testing far worse?###

{% blockquote OpenSignalMaps http://opensignalmaps.com/reports/fragmentation.php Android Fragmentation Visualized %}
We've spotted 3997 distinct devices.
{% endblockquote %}

Yep, it is.

The fragmentation in iOS is still not as bad as Android's fragmentation, with a corresponding increase in horror for in-device testing. The crazy fragmentation is actually great for manufacturers (and customers) as they can customise everything to their heart's content and target a whole range of markets, but it's horrible for developers and testers as there's an almost infinite number of devices to potentially test. Not to mention Android’s customisation abilities creates an almost infinite set of possible system/environment configurations.

[OpenSignalMaps](http://opensignalmaps.com/), who are trying to build a cellphone coverage map from crowd-sourced data using an Android app, did a [report recently](http://opensignalmaps.com/reports/fragmentation.php) on how bad fragmentation has become, how they test in that environment and the compromises they've made in their development effort. It's worth a read to grasp some of the challenges in developing in a fragmented mobile environment.

{% img /images/posts/device-testing-for-ios/device-testing-animoca-android.jpg Animoca's Android devices %}

*Animoca uses over 400 Android devices for testing.*

[Animoca is forced to test with over 400 Android devices](http://techcrunch.com/2012/05/11/this-is-what-developing-for-android-looks-like/), and they can only really do that because they have deep capital backing to allow them to purchase all these devices. The capital gives them a lot more flexibility to cover more devices in primary markets, as well devices in growing markets (Android has become particularly strong in developing markets given the cheapness of some handsets there).

{% img /images/posts/device-testing-for-ios/device-testing-pocketgems-android.jpg PocketGems also has to use a huge range of devices %}

*PocketGems also has to use a huge range of devices.*

But before you start pointing and laughing at Android developers, the problem is still exists in iOS. It's just a slightly smaller problem. Even if you only consider the devices immediately available for sale now, there's still a whole range of iPhones, iPads and iPod Touches that you'll need to cater for. It's more if you're considering older devices who have different versions of iOS. Each of these could have varying levels of connectivity (LTE, 3G, EDGE, 2G, WiFi) and other activities going on (calls, background activities, etc).

{% img /images/posts/device-testing-for-ios/device-testing-pocketgems-ios.jpg PocketGems has a wall of iOS devices %}

*PocketGems has a wall of iOS devices.*

[PocketGems](http://pocketgems.com/) has a device testing wall for just iOS devices - I can see 30-odd devices on that wall alone and I'd guess they have more of them out there somewhere. It's a reasonable problem for everyone.

This is obviously worse for cross-platform development teams, who may have to handle some combination of iOS, Android, Windows Mobile, Nokia, BlackBerry and a whole range of other devices including any number of web browsers. For teams like this, I'd consider a cross-device solution like [Calatrava](http://calatrava.github.com/) or if you want to expand even less effort, perhaps [PhoneGap](http://phonegap.com/). Once you have a web-based solution, you can test using existing web automated testing tools such as [Selenium](http://seleniumhq.org/), and then do exploratory on devices.

###So what would I recommend?###

Here's a few things you should consider. Depending on the size and composition of your iOS development/testing team, some or all of these will be appropriate. I’m focusing on iOS here but most of this advice could be applicable to other platforms.

* If you are building an app from scratch, I'd seriously consider **building an iOS 6+ version only**. The majority of users are already using [iOS 6](http://www.apple.com/pr/library/2013/01/28Apple-Updates-iOS-to-6-1.html) - 300 million people is not a small marketplace. I'd warrant a fair number of those have already upgraded to [iOS 6.1](http://appadvice.com/appnn/2013/01/adoption-rate-for-ios-6-1-may-be-fastest-yet-for-apples-mobile-operating-system) - Over-The-Air updates are driving the update rate even faster). This isn't always possible - if you're building an app that has to be widely available (eg. a government app, or the app version of a website), you might have to extend back to iOS 4 coverage to allow for legacy devices still hanging around. As a team though, if you can justify being able to move forward, you should definitely do it (or if you’re still building a legacy app). You can focus on building the best experiences for new devices, rather than hunting down bugs in old devices (this kills the soul of the developer). If you're an independent developer, then I would go for what costs you the least amount of effort - by only supporting iOS 6+ users, you're saving yourself a lot of bug-fixing time that can be better spent developing new features. Bigger development houses or companies may (and may need to) afford to extend compatibility to older versions of iOS, with a commensurate amount of effort and resources burnt doing so. A side advantage of supporting the latest and greatest iOS version is that your chances of being featured in the App Store rise slightly (and being featured is a massive boost for sales).

* If you can, I'd **build an universal app** over a specific version for iPhone and iPad. Separate versions are two individual codebases to maintain and check. You may have a good reason to do so (eg. forcing customers to buy your app twice), but really, you'd just be better off building a new app instead. However, if you have *significantly* different interfaces and interactions between your iPhone and iPad versions, then product-wise you'd be better off building two products.

* Force the iOS simulator to run a slow build of every version of iOS (you are using [continuous integration](http://martinfowler.com/articles/continuousIntegration.html), right?). You could do this manually if you don't release updates very often, but it's going to be a painful process and manual testing is not as reliable as continuous validation by automated tests. You'll be able to identify bugs earlier and this will save on in-device testing time.

* Take a **pragmatic view of in-device testing**. Test major releases across the devices you believe the majority of your users are going to use. If you're building a specific iPhone application (predominately an app requiring internet connectivity that is likely to be used in-transit or away from a stable WiFi connection, or a camera app, etc), then I would test on the versions of what the majority of your iPhone users will be running. 

* Use [HockeyApp](http://www.hockeyapp.net) to build a broad beta tester group. Know where you're lacking test coverage in devices (triggering discoveries like "gee, we don't have many iPod Touch testers when 30% of our production users actually use a iPod Touch") and actively seek out those users and get their feedback. Seek out testers with unusual devices as well - there are still people floating around with old iPhones or iPod Touches that don't have the flexibility to upgrade to the latest and greatest. A free alternative to HockeyApp is [TestFlight](http://testflightapp.com) that I worked with on a prior project but it proved incredibly flaky during that time and in the last 6 months. It's fine as a temporary solution (hey, it's free!) but the cost of HockeyApp is so minimal that my opinion is that you should just pay for the hosted HockeyApp service. If you're not comfortable with that (whether it's uptime or privacy/security concerns), you can run your own HockeyApp instance, maybe in an [AWS](http://aws.amazon.com) machine.

* Suck it up and start collecting devices. Borrow devices from other developers or friends. Run a build onto their device from Xcode and play around with your app. You might not find any bugs or you might find whole functionality has just stopped. There's only one way to be sure.

* Before investing in buying *all* the possible devices you could test on, **release your app**. Use [HockeyApp](http://www.hockeyapp.net) in your production app to track what devices are using your apps, and see where your usage actually lies Focus your in-device testing on the majority of usage. Then buy devices to cover gaps (you may need to scour second-hand stores or eBay to acquire what you need).

* Investigate automated in-device testing using [KIF](http://github.com/square/KIF) and [Fruitstrap](http://github.com/ghughes/fruitstrap). [Stewart Gleadow](http://www.stewgleadow.com/) talks about getting [Fruitstrap up and running to install apps onto a device]() and Sean Freitag wrote some notes about combining [KIF and Fruitstrap](http://seanfreitag.wordpress.com/2012/10/10/running-ui-tests-on-an-ios-device-in-a-continuous-integration-environment/). Somewhere in the middle is the solution. There was talk that KIF and [Frank](http://testingwithfrank.com/) were going to work on in-device testing as part of their core solution but I'm not sure where that landed. 

###What's happening locally###

A few of us here in Melbourne are trying to organise a local device testing lab made up on iOS, Android, BlackBerry, Windows Mobile devices and some other weird variations, of both phone and tablet forms. It's mostly made up of donated devices right now (rather than purchasing current models) but having that resource to spend some time to verify your designs and ideas against is hugely powerful and can expose some unusual edge cases that were not previously expected. Especially as you continue support for older devices, getting exposure to those old devices can get harder and harder.