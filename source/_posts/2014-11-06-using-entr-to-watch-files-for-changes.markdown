---
layout: post
title: "Using entr to watch files for changes"
date: 2014-11-06 16:17
comments: true
published: true
author: Tim Hordern
categories:
- programming
- utilities
- linux
- osx
description: "Use entr to watch files in a directory and run commands"
keywords: "entr, file watching, file watcher, programming"
---

I've recently switched to a project where the temporary product we're building is built in Java 7
using [Maven](https://maven.apache.org/) as a build system. As a productive developer and tester,
it's great to have a continually running set of tests as well as compilation to make sure things are
working. It's particularly awesome for TDD-flow and gets you thinking at a higher level <small>*[1]*</small>.

On previous nodejs projects, I had grown accustomed to using [`grunt watch`](https://github.com/gruntjs/grunt-contrib-watch)
to run a set of commands (usually, build then unit test then a small smoke test of contract tests).
When I looked into Maven, there didn't seem to be a great plugin for auto-running commands.

I came across this [Stack Overflow thread](http://superuser.com/questions/181517/how-to-execute-a-command-whenever-a-file-changes)
which pointed me to a number of options, including shell scripts, [nodedemon](https://github.com/remy/nodemon)
and [entr](http://entrproject.org). Googling also turned up [filewatcher](https://github.com/thomasfl/filewatcher).

I've been trying out [entr](http://entrproject.org) or Event Notify Test Runner to use it's full name
and really like it as part of a continuous testing workflow. To quote from the [entr site](http://entrproject.org/):

> The Event Notify Test Runner is a general-purpose Unix utility intended to make rapid feedback and
  automated testing natural and completely ordinary.

That sounds like my kind of tool. Let's give it a go!

To install entr, you can use [Homebrew](http://brew.sh/):

`brew install entr`

You can also download it from the [entr homepage](http://entrproject.org) and install it manually.

Once installed, you can trigger entr file watching for a certain set of files using a pipe command:

`find ~/some_directory | entr some_command`

The find command lists all the files in the `some_directory` and then entr will run `some_command`
if any of the files you listed change.

For instance, in our Java app's directory I can run:

`find src/ | entr mvn clean install`

which runs `mvn clean install` if anything in our source code directory changes, saving me from
having to trigger it manually. After starting it, you'll really quickly get used to having your
tests running constantly providing fast feedback to you. As a side benefit, you'll begin to quickly
feel the pain of a slow-running test suite and you'll work to fix that!

There's a lot of useful options available in entr, such as the `-c` flag to clear the screen before
a run. There's also an example on the [entr page](http://entrproject.org/) for tracking if there
are new folders or files added (that's because it's triggered off the list that you piped in). You
can also do crazy stuff with [tmux](http://tmux.sourceforge.net/) to control other applications in
other tmux panes.

In all, [entr](http://entrproject.org/) is a small, useful utility that makes your programming life
much easier.

<small>
*[1]
[Bret Victor](worrydream.com) is a big proponent of the argument that the traditional way that we
program of writing code, hitting a compile button and then seeing the output is old-fashioned. This
isn't anywhere close to that (you should see Apple's [Playgrounds](https://developer.apple.com/library/ios/recipes/xcode_help-source_editor/chapters/ExploringandEvaluatingSwiftCodeinaPlayground.html)
for a version of that idea) but it at least gets me away from using IntelliJ's bastardised tools
or having to run command line actions.*
</small>
