---
layout: post
title: The story behind the Root System Markup Language
author: Guillaume Lobet
xpath:/Users/guillaumelobet/Dropbox/research/scripts/websites/guillaumelobet.github.io/_posts/rsml.md

---

<div class="message">

This post was written following the publication of the following article:

Lobet et al. 2015, Root System Markup Language. Toward an unified root architecture description language, Plant Physiology, in press.

</div>

### The unspoken truth of root research

If you have ever analysed root system images, you might now the unspoken truth: it requires a great deal of time and efforts! Either you work with an automated tracing software (such as [EZ-Rhizo]() or [RootSystemAnalyzer]()) and as soon as the root systems are getting old (more than 10 days) you'll need to spend quite some time correcting the detection; or you work with a semi-automated tool (such as [SmartRoot]() or [RootNav]()) and you'll have to go through every single image to trace the roots. The **good thing** is that you know you'll get great data out of it! Architectural data are extremely rich and can be analysed in multiple ways. However, the **downside of the story** is that you will use only a fraction of the data and the rest might be lost. This is what the [Root System Markup Language](rootsystemml.github.io) is about.

### From Nottingham to Louvain-la-Neuve

**Back to 2012.** [Xavier Draye]() and myself were in Nottingham for the first workshop on Image Analysis Methods in Plant Sciences. Before going to the meeting, we visited the folks at the CPIB. There, we met [Michael Pound]() and [Tony Pridmore](), who was developing RootNav at that time. We discussed about root image analysis tools and how they were complementary with each others. We thought it would be great to have a way to share information between the different tools and groups. That was the first time we talked about having a common format. In the following months, Mike and I made a couple of tests and we ended up having a first draft of a commons structure, based on XML. Then, both of us had a thesis to write down and other projects to finish and the common format was left aside for a while...

**Early 2014.** The root format hasn't moved much. Mike and I kept in touch and continued working on it for a while, but without any face to face meeting, it was hard to get things done. So, with Xavier, we decided to invite people interested in developing the language in Louvain-la-Neuve. A couple of e-mails later, a date was set and colleagues were invited. The machine was rolling again.

**February 2014.** Three-days meeting to discuss the format. A nice team was gathered: Tony and Mike from the CPIB (RootNav, RooTrak and RootTrace), [Christophe Pradal]() and [Julien Diener]() from INRIA (OpenAlea), [Philippe Nacry]() from INRA (the plant guy), [Andrea Schnepf]() from Juelich (RootSystemAnalyser), [Mathieu Javaux]() (R-SWMS), Xavier and myself (SmartRoot). So around the table we had specialist in plant biology, root image analysis and plant modelling. We had everything we needed to created a bridge between the different piece of the root research, our very own One Ring. 

Three days of discussions, coding, drawing and drinking beers (Belgian ones, of course) latter, we had a prototype format. The Root System Markup Language, aka RSML, was born. Back in our respective labs, we each implemented the format in our own tools. We exchanged root files and played with each other data. We set up a [website](rootsystemml.github.io) with all the require informations. And we started writing a paper about it. 

### Writing. Re-writing. Re-re-writing.


**June 2014.** Plant Physiology was having a Root issue, so we thought it might be a great opportunity to spread the world inside the plant community. We wanted to touch as large a community as possible so the format will be largely adopted. 

If you ever need to write a paper collaboratively, try out Google Docs. I know, I know. The will stole your data to sell it to the devil... Nevertheless, they make great tools. We had 1 document, 12 writers. Sometimes 5 at a time. No more  *version-final.doc* / *version-final-final.doc* / *version-final-final-draft-definitive.doc* issues. One document, version controlled, multiple users, figure managements, and so on. As a result, in a bit more than a month the paper was written and submitted. 

**July 2014.** The manuscript is back. And rejected. But, and this is important, with "*encouragement to re-submit*". After the initial "*the paper will never be published*" phase, we were back on tracks. In fact, the reviewers had an excellent point: it was fine to have a common format, but it is close to useless if you do not have the tools to open and analyse them... So we were back to coding. We developed tools that could be use by every scientists and could be incorporated in regular research pipeline. We developed API in Java, Python, Excel, R and C#. In additions, we implemented the RSML in a couple of additional tools. In total, at this time, RSML bridges the gap between 6 image analysis tools, 5 data analysis packages and 4 modelling tools.

![legend ](file:///Users/guillaumelobet/Dropbox/research/scripts/websites/guillaumelobet.github.io/img/rsml/figure-4.png)

 
**November 2014.** Submission again. Finger crossed in the team.

**January 2014.** We receive new comments from the reviewers. Two of them are highly positive



{% include twitter_plug.html %}
