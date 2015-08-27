---
layout: post
title: "Building a Static Website"
date: 2012-02-29 09:38
comments: true
published: true
author: Tim Hordern
categories:
- blogging 
- octopress
description: "I've started blogging with Octopress. Here's my initial thoughts on Octopress, the Rakefile and some of the things I like and don't like about it."
keywords: "octopress, jekyll, static websites, blogging, octopress theming, octopress rakefile"
---

UPDATE: I managed to get the sidebar sent to the bottom by default, by adding this line to ```_config.yml```:

{% codeblock lang:yml %}
sidebar: collapse
{% endcodeblock %}

ORIGINAL POST:

This website is currently built using [Octopress](http://octopress.org). It's a framework built on top of [Jekyll](http://jekyllrb.com), which is a static website generator built in [Ruby](http://www.ruby-lang.org/). Octopress takes the Jekyll foundation and adds a nice wrapper of a [Rakefile](http://rake.rubyforge.org/) and some funky responsive [SASS](http://sass-lang.com) styling that gets you up and running with blog posts with pretty minimal effort. The Rakefile also has some nice commands for automating pushes to [GitHub Pages](http://pages.github.com/) or another source control process.

So far, I do like the ease of use in blogging with it. I created some Rakefile commands including some of the existing Rake tasks to make this site's deployment to [Heroku](http://www.heroku.com/) easier. That's helped to remove some of the manual intervention in the blogging process and let me think more about writing. I haven't actually done that much writing as I've been undecided whether to build this using Octopress or Jekyll: decision paralysis = no actual output. 

The major barrier to me settling on Octopress is the styling, which is nice in terms of responsiveness but the design itself is quite busy (there is lots going on in the page). If you expand this page (clicking the little link next to the sidebar), that's the width I'm going for. I think any content-driven site (like a blog) should be focused on content delivery and nothing else. Things like Twitter are clutter. In the expanded mode, the Recent Posts and Twitter drops down to the bottom of the page, which is ideal but I haven't worked out to make the theme do that permanently (and I haven't really had the time/enthusiasm to make it do so).

So yeah, I've yet to work out an easy way to build up my own theme without reverting back to Jekyll. Therefore temporarily, this site looks 95% the same as a bunch of other sites built with Octopress, until I can spend some proper time theming Octopress or just rebuilding it all in Jekyll.

But the content will (hopefully) continue.