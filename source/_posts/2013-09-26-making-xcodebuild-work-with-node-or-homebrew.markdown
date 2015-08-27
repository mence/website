---
layout: post
title: "Making xcodebuild work with Node or Homebrew"
date: 2013-09-26 20:00
comments: true
published: true
author: Tim Hordern
categories: 
- programming
- command-line
description: "Making Xcode Command Line Tools work with Node.js or Homebrew"
keywords: "xcodebuild, xcode-select, XCode, Mountain Lion, npm, Node.js, Homebrew"
---

Recently, I ran into an issue trying to get [npm](https://npmjs.org/) to install a new [Node.js](http://nodejs.org) application that was similar to something that I've experienced before with [Homebrew](http://brew.sh/). Turns out trying to get Homebrew working correctly on OSX Mountain Lion is a bit of a pain. Both of these package managers rely on having [Xcode](https://developer.apple.com/xcode/) installed and accessible at the command line.

Normally, you should be able to install Xcode and install the Developer Tools package, or just install the standalone [Xcode Command Line Tools](https://developer.apple.com/downloads/index.action) to allow command line applications to compile applications using Xcode. However, sometimes you'll find that Xcode is no longer accessible from the command line.

This is the error I saw using npm:

```
Error: No developer directory found at /Developer. Run /usr/bin/xcode-select to update the developer directory path.

gyp: Error 1 running xcodebuild
```

You might get an error like this during a Homebrew installation or if you've used `brew doctor`:

```
Warning: Your Xcode is configured with an invalid path.
You should change it to the correct path. Please note that there is no correct
path at this time if you have *only* installed the Command Line Tools for Xcode.
If your Xcode is pre-4.3 or you installed the whole of Xcode 4.3 then one of
these is (probably) what you want:

    sudo xcode-select -switch /Developer
    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

DO NOT SET / OR EVERYTHING BREAKS!
```

The solution depends on what you've got installed.

Firstly, check that you have the latest version of Xcode (or the latest version of the Xcode Command Line Tools).

If you have the [Xcode Command Line Tools](https://developer.apple.com/downloads/index.action) installed, you can try setting the Xcode path using the `xcode-select` command:

```
sudo xcode-select -switch /
```

This points xcode-select to the /usr/bin/xcodebuild location of the Command Line Tools, but can lead to Homebrew hanging (it explicitly warns against this).

A better solution is to install Xcode (which is a bit silly to install a huge application to run some command line tools, but there you go).

If you have the full installation of [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12) installed, you can set the Xcode path using a more complete `xcode-select` command:

```
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
```

If you're wondering what caused all this kerfuffle, it was [the changes in Xcode 4.3](https://developer.apple.com/library/ios/documentation/DeveloperTools/Conceptual/WhatsNewXcode/Articles/xcode_4_3.html) that removed the Command Line tools and the /Developer directory that caused some of these things to go haywire.