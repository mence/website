---
layout: post
title: "Using Git include to add color to your Git history"
date: 2012-07-06 12:55
comments: true
published: true
author: Tim Hordern
categories:
- programming
- Git
keywords: "Git, Git alias, Git pretty, .dotfiles, Git log"
---

I saw a neat Git alias for viewing your Git history on [Git Immersion](http://gitimmersion.com/lab_10.html). I thought I'd share not only the alias, but how to use the new Git include function so you can add the alias from a source control-hosted version of your .dotfiles!

{% codeblock %}
git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short
{% endcodeblock %}

Which when you run this against the [Jekyll](https://github.com/mojombo/jekyll/) repo, it gives us:

{% codeblock %}
* 7d88f72 2012-03-03 | avoiding to call site_payload one time per each post and page. Speed site creation up of a 20%. (HEAD, upstream/master, master) [Luca Grulla]
* 3056953 2012-04-23 | Update History. [Tom Preston-Werner]
*   4533e60 2012-04-23 | Merge branch 'master' of https://github.com/daneharrigan/jekyll into daneharrigan-master [Tom Preston-Werner]
|\
| * 316cc85 2012-02-26 | moved paginate_path to default config [Dane Harrigan]
| * 58d8fef 2011-06-05 | added command-line option --paginate_path [Dane Harrigan]
| * 2b8017d 2011-06-04 | can now set a custom pagination location with pagination_path [Dane Harrigan]
| * b2ab245 2011-06-04 | gave the assertion a failure message [Dane Harrigan]
* | 8a0fbf0 2012-04-23 | Cleanup for RDiscount TOC support. Closes #333. [Tom Preston-Werner]
{% endcodeblock %}

This is pretty nice as it is. But I thought I'd pimp it up a little bit by adding some of the color tags into the format. You set a color by including the %C option in your format, specifying a color, and %Creset when you want the color to end.

{% codeblock %}
%C(color)options-to-color-go-here%Creset
{% endcodeblock %}

Applied to the original alias, we get this:

{% codeblock %}
git log --pretty=format:\"%C(yellow)%h%Creset %ad |%C(blue)%d%Creset %s [%C(green)%an%Creset]\" --graph --date=short
{% endcodeblock %}

Cool, so we now have a nice shiny Git history command. But it's pretty ugly having to type this everytime. We *could* add this to our Bash aliases in our .dotfiles, but under Git 1.7.10 released in April we can now use the [includes](https://github.com/git/git/commit/9b25a0b52e09400719366f0a33d0d0da98bbf7b0) process to directly add it to our Git config.

First, find the right .gitconfig file that you want to configure. The global .gitconfig file lives in ~/.gitconfig, but you could easily apply this to a specific repo's .gitconfig file.

Add this to your .gitconfig file:

{% codeblock %}
[include]
	path = .gitaliasconfig
{% endcodeblock %}

Add this to your .gitignore file:

{% codeblock %}
.githubconfig
{% endcodeblock %}

My .dotfiles are stored in my personal [Dropbox](http://www.dropbox.com), so I navigate over to my .dotfiles folder and add this to a new .gitaliasconfig file there.

{% codeblock %}
[alias]
  hist = log --pretty=format:\"%C(yellow)%h%Creset %ad | %C(blue)%d%Creset %s [%C(green)%an%Creset]\" --graph --date=short
{% endcodeblock %}

Back in your ~folder, create a symbolic link to your new .gitaliasconfig.

{% codeblock Creating a symbolic link to .gitaliasconfig %}
ln -s ~/PathToYourDotfiles/.dotfiles/.gitaliasconfig
{% endcodeblock %}

And just like that you can run ```git hist``` and see your new pretty output, with your new alias stored in your .dotfiles config. If you really wanted to get fancy, you could move your config and ignore file to your .dotfiles store and get it all symbolically linked.

You could also use this to move your [GitHub](http://github.com) config to a private file, or any other specific git configuration you do.