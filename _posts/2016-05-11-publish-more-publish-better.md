---
layout: post
type: blog
title: Publish more of publish better? 
author: Guillaume Lobet
tags: publishing
image: img/h_predictor.png
---


A couple of month ago, I was discussing with senior colleagues about the conditions to (have a chance to) be tenured in Belgium. One of them told that the first thing the evaluation committee will look at will be my [h-index.]() He also told me that, below a h-index of 10, I have few chances to even be *considered*. He admitted it to be bad, but that it the case anyway...

I am not a defender of the h-index, on the contrary. I have been an [ImpactStory advisor](http://blog.impactstory.org/advisor-month-lobet/) for quite some time  and I advocate for the [valorisation of every scientific outputs](www.guillaumelobet.be/science_valorisation/), no only peer-review papers. So it depressed me a little to know that the h-index was still so strongly used by evaluation committees.

Then I was wondering: how long would it take to reach an h-index of 10? My current funding will end in 1 1/2 years and by that time I'll have to apply for a new position. Will I be there already? And to reach that, how many papers do I need to publish every year? In which journal?

So with that in mind, and because I like to play around in R, I made up an h-index evolution simulator. It taught me quite a bit about how easy it is to "game" my h-index, and the reality of how long it would take me to reach the necessary h-index to be tenured at my institution

## The simulator

The simulator in itself is quite simple and needs only a couple of inputs:

- the average *quantity* of paper you publish per year + the estimated standard deviation
- the average *quality* of your paper (citations/year, or mean impact factor of  the journals you publish in)[^1] + the standard deviation
- the target h-index (in my case, it will be 10)
- the starting year (the date of your first paper)

[^1]: I know, citations are not always an indicator of quality...

Then the simulator follows a couple of simple rules:

- as long as our h-index is below the target, keep publishing
- publish `n` papers per year;
	- `n` is picked from a normal distribution, with the *mean* and *standard deviation* defined by the parameters;
- for each paper, assign the *quality* factor (the number of citations/year);
- this factor is picked from a normal distribution, with the *mean* and *standard deviation* defined by the parameters;
- compute the number of citation for each papers (based on its age and the quality of the journal);
- compute the h-index. If it is below the target, keep publishing

So, the simulator is very basic, is more likely to have many flaws (e.g. it assumes a constant scientific production, a constant citation rate, ...) and could be improved, but I figured it would be enough for what I wanted to do. 

> If you want to try it out yourself, just [go here](https://github.com/guillaumelobet/h-index-simulator) and follow the instructions. The simulator has been wrapped into a [Shiny app](shiny.rstudio.com) (see fig. 1), so no computing knowledge is needed to make it run. The only requirement is to have a functional installation of R on you computer. 

---

![Figure 1: Interface of the h-index simulator](img/h_predictor.png)

**Figure 1:** Interface of the h-index simulator

---

## Publish more or publish better?

What type of results did I get of the simulator? 

First, I entered the parameters corresponding to my own research production and checked if it would correctly estimate my current h-index. It did.  I know, one sample is not really representative... Apologies for that.  

Then, I started playing around with the parameters to see how they influenced the output. Doing it by hand was a bit laborious, so I automated the model to systematically explore the parameter space. I simulated the number of years needed to reach an h-index of 10 with each combination of productivity (number of papers) and quality (number of citations). Both the number of papers and the citations varied between 0 and 10 (these numbers seemed reasonable to me).

---

![Result from the h-index simulations.](img/h_evol_no_auto.png)

**Figure 2**: Result from the h-index simulations. Colours represent the number of years needed to reach an h-index of 10, for each quality/quantity pairs. Red is fast, blue is slow.

---


The figure 2 show the results from the first set of simulations. The first thing we can see is that, no matter how much or how good you publish, you will always reach the target h-index at some points (well, at least if you publish one paper per year). Of course, it will be faster if you publish a lot in high profile journals ( = more citations). No shortcut here. 

Then, I wondered about auto-citations. Auto-citations (when you cite your own work), is a well know limitation of the h-index. What would happen I choose to always cite all my previous papers? To figure it out, I included an *AUTOCITE FRENZY* mode in the simulator. When enabled, every paper systematically cites all the previous ones, in addition to the regular citations you would get based on the paper *quality*.  

---

![Result from the h-index simulations, with AUTOCITE FRENZY mode enabled.](img/h_evol_auto_diff.png)

**Figure 3**: Result from the h-index simulations, with *AUTOCITE FRENZY* mode enabled. Colours represent the number of years gained in order to reach an h-index of 10 compared to the classical mode. Red is none gained, blue is .

---


Without much surprise, the *AUTOCITE FRENZY* mode fasten the evolution of the h-index (figure 3). The more you cite yourself, the more citation you get. Again, no magic here and nothing very new either. Is it bad to cite yourself? Of course not. Your scientific outputs are more likely linked to each others, so it would seem odd not to reference your previous work. The extreme drawback is that if you publish a lot of small papers (in [predatory journals](https://en.wikipedia.org/wiki/Predatory_open_access_publishing) for instance) and systematically cite your own papers, then your h-index will go up much faster. No need for good quality paper here. The auto citation mode is even more interesting for low quality paper than for higher ones. 


## Publish more and cite yourself


This small exercice did not teach me anything really knew. It just put some hard-cold number on the reality: to increase your h-index, you need papers and ou need these papers to be cited (that's the very definition of the index). So to increase it, publish more and better, or punish more and cite yourself... 

Collaborations are most likely the best way to achieve this. Good long term collaboration will be fruitful in terms of finished projects. However, not all topics/teams lead to collaborations. In addition, having only papers with your name in the middle might also be seen critically (believe me, I have been there). So there is no magic recipe, but I believe the right balance needs be find quickly. 

The hard part is that in order to be able to continue to do research (and we all know that Science is not getting more money these days), researchers have to publish papers quickly, early in their career. Placing that much weight on the h-index in evaluation boards encourages young scientists to minimise risk when writing or choosing projects. You can hardly afford a couple of years without any papers, so you might have to focus on efficiency, not always scientific interest. Maybe more on that later...

To conclude, the predictor told me that, based on my current scientific production, I will reach my goal in 2018... My funding ends in Sept 2017, so we'll see how it goes. Fortunately, the h-index is not King everywhere. I heard many stories where it was used only for what it is: merely an indicator. Let's hope it stays that way. 

> Many thanks to [Stacy Konkiel](skonkiel) for her comments and advices on this post!


{% include twitter_plug.html %}


