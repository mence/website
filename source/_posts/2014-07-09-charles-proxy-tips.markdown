---
layout: post
title: "Charles Proxy Tips"
date: 2014-07-09 14:58
comments: true
published: true
author: Tim Hordern
categories:
- osx
- apple
- networking
- tips
description: "Tips for using Charles Proxy"
keywords: "charles tips, charles proxy tips, charles osx tips, charles proxy, charles"
---

### Throttling

Throttling in Charles allows you to simulate different network conditions. You can change the
available bandwidth, network utilisation, latency as well as change the MTU size. You can also
enable this only for selected hosts, which is particularly useful for simulating a poor connection
to a 3rd party (eg. Google is slow).

The settings for Throttling are available under `Proxy > Throttling Settings`, and you can turn it
on/off under `Proxy > Throttling`.

You can also set Charles to throttle by default in Settings: `Charles > Preferences > Startup` and
select 'Start Throttling`.

### Memory Usage

Charles can consume quite a lot of memory as it records all traffic passing through your network
device. If you constantly find yourself being presented with warnings about Charles running out of
memory, you can boost the Recording Size Limit under `Proxy > Recording Settings`. You can also
limit the Recording History here.

You can display how much memory is being consumed by your current Charles session in Settings:
`Charles > Preferences > Show Memory Usage`. When you restart Charles, the current memory usage will
be displayed in Charles' status bar on the right hand side.

### Remote Mapping

I'm often required to do a lot of VM-based testing (damn you [Internet Explorer](http://modern.ie/))
and it's often a little tricky to set up a browser in the VM to connect to your local OSX server.
For instance, if you simply setup a traffic redirect to `http://localhost`, then the VM's browser
will try and navigate to `localhost` on the VM, not your machine.

The better way to do this is to set up your Remote Mapping to point to your IP, not localhost. So
go to `Tools > Map Remote` and Add a remote mapping. Then set the URL you're trying to capture as
your From setting, eg. `http://my-test-website.com` and the To setting as your current IP on your
OSX machine, eg. `http://192.168.0.10`.

This way, when the VM's browser makes the request, it actually fetches the URL from
`http://192.168.0.10`.