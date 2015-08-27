---
layout: post
title: "W3Conf 2013: Joshua Davis - Beyond Play"
date: 2013-03-05 09:40
comments: true
published: true
author: Tim Hordern
categories: 
- conferences
- web
- art
description: "My notes from Joshua Davis's W3Conf 2013 talk on Beyond Play"
keywords: "W3Conf 2013, W3Conf, Joshua Davis"
---

<small>*Note: I'm sorry for the quality of these photos in advance. I wasn't in the greatest seat for taking photos!*</small>

##Beyond Play##

{% blockquote Mark Twain %}
Work and play are words used to describe the same thing under differing conditions.
{% endblockquote %}

[@joshuadavis](http://twitter.com/joshuadavis) is an amazing designer and artist. He's been featured in any number of museums around the work, including New York's Cooper-Hewitt National Design Museum. He works with a whole range of designers, artists and musicians (including Deadmau5). He even designed the face of IBM's Watson!

Joshua writes vector based assets to design art: he creates generative prints. He defines rules, boundaries, assets then runs a script to build the art. Joshua uses [Processing](http://processing.org/) for his art - he loads in SVG assets, then writes programs to generate randomisation.

Joshua's talk was all about what was play, and how we can extend play into becoming our lives and our work. He ran a quick survey/sample of a whole range of people and asked, "what's the opposite of work?"

- Adults defined it as play.
- Kids defined it as lazy, home, relaxing, boring, hard, not work.

{% img /images/posts/w3conf-2013-joshua-davis/joshua-davis-2-work-and-play.jpg Work and play aren't antonyms, they're synonyms %}

What can we learn from those kids? That work and play aren't antonyms, they're **synonyms**.

[Marc Thiele](http://www.marcthiele.com/) invited Joshua to [Beyond Tellerrand](http://2013.beyondtellerrand.com/). He was inspired by a 'crazy' church's stained glass to try and recreate stained glass representations of his art. He took the outputs of his SVG art, silkscreen printers film and inkjet printing to make window art.

The message here: **Try** - we don't know if we'll succeed but that's play!

Joshua is a huge believer in *inspiration hunting* (an important part of 'playing'), which can turn into work. **Be inspired by everything, play**! Joshua is inspired by crazy hotel carpets - Joshua has a file of 'f***ed up hotel carpets'. He's inspired by skateboarding, shoes, churches, cellar floors. Things that he loved as a kid, and now that he's a big kid, it's even easier. He's even got a half-pipe in his backyard! 

##Create complexity from simplicty##

Joshua believes strongly in the idea of creating complexity from simplicity. Taking a very simple idea: what happens if we take this little design into a kaleidoscope, Joshua's methods are all about using simple concepts to build complexity: using a reflection system to make SVG art components, then putting them into a composition, repeating the process until Joshua like it; using colours in arrays to allow him to simply pick and select what colours he wants.

{% img /images/posts/w3conf-2013-joshua-davis/joshua-davis-3-artifacts.jpg SVG artifacts ready for loading into Processing %}

*SVG artifacts ready for loading into Processing*

{% img /images/posts/w3conf-2013-joshua-davis/joshua-davis-8-randomised-art.jpg Some of the art that Joshua has generated %}

*Some of the art that Joshua has generated*

##Escape your tools##

Joshua keeps sane by escaping his tools - he always pushes to take his art and his ideas from digital to physical. There's often a different feel and representation by turning it into a physical product.

{% img /images/posts/w3conf-2013-joshua-davis/joshua-davis-4-digital-to-physical.jpg From Digital to Physical %}

At a workshop for his students held at Anderson Ranch, Joshua got his students to write programs to make truly *new* media, then got them to print them out and silkscreen them as artworks. Another workshop had them making a skateboard template: they turned programs into skateboard designs by sending them to a CNC router to cut into blank skateboard decks. Joshua called on us to *be inspired by the tools you use everyday, but take them to a different medium*. From SVG Processing art to hand-drawn skateboards.

{% img /images/posts/w3conf-2013-joshua-davis/joshua-davis-5-decks.jpg Decks with Joshua Davis' art ready for printing %}

*Decks with Joshua Davis' art ready for printing*

{% pullquote right %}
Joshua encouraged us to always continue to push the ideas of play. When you play, {" the type of work you make is the type of work you'll get hired to do. "} Some ideas Joshua had for introducing play were:
{% endpullquote %}

- keep it simple (for example, take a simple idea or piece of art, utilise a Lindenmayer system to randomise it, and discover what is unexpected)
- Enjoy the failures and the process that you took to get there (for example, Joshua took a simple random character that he'd generated which didn't work as art but he made it into a font)
- Freak people out: the shock brings something new

##Embrace Collaboration##

Embrace Collaboration: work with others in different spaces, including especially public spaces. Learn from the collaboration: the different perspective can show you a different way to approach your art. Joshua threw up a picture of how he was teaching his little girl to watercolor a paint-by-numbers picture of some koi. Joshua's part of the picture was very true-to-life with accurate color representation and matching the lines exactly. But his daughter didn't think like that: she wanted the waves to look like rainbows, and created a whole random mess of colours as she saw fit. It kind of blew Joshua away.

{% img /images/posts/w3conf-2013-joshua-davis/joshua-davis-6-deadmau5-headphones.jpg Headphones Joshua designed for Deadmau5 %}

*Headphones Joshua designed for Deadmau5*

{% img /images/posts/w3conf-2013-joshua-davis/joshua-davis-7-deadmau5-led-head.jpg The Deadmau5 LED head! %}

*The Deadmau5 LED head!*

Public collaboration is even more interesting. It's a win-win if you can get people involved, because you can have entirely unexpected art emerge.Building on the idea of using digital tools to start with but creating a final product in analogue, a mural Joshua created in Barcelona started hand-drawn mural generated, then drawn in pen, then lined in pen. But the most creative and exciting art emerged in the second iteration, done in Mexico: a hand-drawn generated mural, for which Joshua then invited random conference attendees to colour and draw in pen, then he lined the art in pen.

###Cool How-to: Colour Stealing###
<small>
Side note: This was the method that Joshua used for 'colour stealing': how he took a palette of colour from a photograph ready for his art.

- Take a JPG in Photoshop
- Save for Web as GIF32 no dithered
- View the color table
- Save as a GIF for export
- Joshua uses an Adobe AIR tool that he made to import GIF, select palette of colours that he wants by picking colours from the introduced palette, and he can see what the artifact output will look like with some of his randomised art
- He can then export the hex values of his selected colours to import straight into Processing for playing with.
</small>

###Update: Video now posted###

W3Conf 2013 has now posted Joshua's talk up on [YouTube](http://www.youtube.com/watch?v=LJS4fBjdPM4).

<iframe width="560" height="315" src="http://www.youtube.com/embed/LJS4fBjdPM4" frameborder="0" allowfullscreen></iframe>