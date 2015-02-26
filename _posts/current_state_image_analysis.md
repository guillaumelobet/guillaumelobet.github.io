---
layout: post
title: Image Analysis in Plant Sciences: some thoughts about the current challenges and perspectives.
author: Guillaume Lobet
---

Nobody questions it anymore: image analysis is an essential tool in plant sciences. From the object detection algorithm used by the microscope software to the dedicated ImageJ plugin for rosette area measurements, images analysis tools and methods are presents in many plant researchers' pipeline. In this post, I will try to give a short overview of the existing plant image analysis tools (mainly with data coming from the [plant-image-analysis.org website](http://www.plant-image-analysis.org)). I will also discuss some of the current challenges that the field is facing and I will give you my two cents on how we might resolve them in the future.
	
The importance of image analysis in plant sciences is reflected by the increase of related publications in the past few years (figure 1). Since 2005, the number of published tools has been (almost) steadily increasing. In the recent past, as much as 20 tools were published every years.

---

![Evolution of the number of published plant image analysis software. [Source: www.plant-image-analysis.org]](/img/current_image_1.png)

**Figure 1:** Evolution of the number of published plant image analysis software. [Source: www.plant-image-analysis.org]

---

What is more interesting is the fact that most of these tools were not published in computer sciences journals, but in generalists plant journals (figure 2), illustrating the broad interest of such tools for the overall plant community. Image analysis is not just a fancy method used by some insiders. It has become a central technique in the botanist's toolbox.

---

![Distribution of the different plant image analysis tools between scientific journals. [Source: www.plant-image-analysis.org]](/img/current_image_2.png)

**Figure 2:** Distribution of the different plant image analysis tools between scientific journals. [Source: www.plant-image-analysis.org]

---

Let's have a look now at the characteristics of the existing tools. They can be classified in multiple ways (figure 3). For instance, we can first distinguish the commercial from the freely available ones. Out of the 112 tools referenced on the [plant-image-analysis.org](http://www.plant-image-analysis.org) website, 84 (75%) are either freeware or open-source tools, generally created by researchers. I'll refer to these tools as *academic* tools, as opposed to *commercial* tools. This is an important distinction, as I'll explain a bit later. It is important to note here that some of the freely available academic tools rely on paid platforms, such as [MatLab©](http://www.matlab.com), which might bring a barrier to their use.

Out of the 85 academic tools, almost all of them are available on Windows, and 53 (62%) are cross-platform (averrable on Windows, Mac and Linux). This is, in my opinion, a very positive trend. Coupled with their free access, it opens the way to more collaborations between research groups, without the need to rely on an homogenised computing system.

---

![Classification of existing image analysis tools. [Source: www.plant-image-analysis.org]](/img/current_image_3.png)

**Figure 3:** Classification of existing image analysis tools. [Source: www.plant-image-analysis.org]

---


### A need for benchmark datasets

From the user's point of view, the diversity of existing tools can be confusing. Looking at the figure 4, we can see that a scientist looking for a tool able to extract the rosette area from Arabidopsis pictures will be faced with more than 20 choices. On the one hand, this is good. It gives the user the opportunity to choose the most appropriate tool for her/his research. On the other hand, comparing these tools can be difficult. Practical consideration (price, operating system, ...) are a first easy way to reduce the number of candidate. However, the tricky part is to choose between the remaining once. The best candidate should be the most accurate, or the fastest, but, unfortunately, this information is usually hard to get... 

---

![Measurements overlap between existing tools. Each circle represent a measurement type (such as the surface, the length, the direction, ...). The size of each circle represent the number of tools performing this measurement. [Source: www.plant-image-analysis.org]](/img/current_image_4.png)

**Figure 4:** Measurements overlap between existing tools. Each circle represent a measurement type (such as the surface, the length, the direction, ...). The size of each circle represent the number of tools performing this measurement. [Source: www.plant-image-analysis.org]

----

Most tools were designed to be efficient on specific datasets, obtained in specific experimental conditions. As such, using a particular tool in slightly different conditions might not work or, even worse, might work and produce inaccurate results. It can therefore quickly become a nightmare for the user to find the most appropriate tool for their research. This might be the reason why people keep developing new ones.

These issues points out a crucial need in the plant image analysis community: **benchmark, ground-truthed datasets**. Such dataset are needed for two major steps in the creation of a new tool. First they can be used to validate the results obtained with the new algorithms (accuracy) and second they can be used to compare these results with existing tools (performance). This basic procedure is an easy way to validate new tools. 

The main issue with such dataset is that they simply do not exists. Biological object are complex and heterogeneous by nature and having a ground-truth datasets out of experimental data is often a nightmare. For instance, the total root length of mature root systems is virtually impossible to accurately measure by hand. Even more for dozen of plants as it would be required for a test dataset. In addition, even if such datasets might exist, they are often confined in individual labs, are not available for cross validation of multiple tools and might not even be compatible with other existing datasets.

Two key elements are therefore essential to improve the situation in the future. Firstly, we need a better consistency between existing dataset and **defined standards** to store the different informations. For instance, a step has already been taken in that direction for root systems, for which a common format has been defined (Root System Markup Language, or [RSML](http://rootsystemml.github.io/), Lobet et al 2015). Secondly, there is a need for the development of freely available **online image repositories**. Again, such repositories already exist in certain fields (e.g. the [ClearedLeafDB](http://clearedleavesdb.org/), Das et al 2014). Furthermore, in addition to their value for the plant image analysis community, online repositories can be used for meta-analysis and help answer biological questions.

### Long term maintenance of existing tools

---

!["Piled Higher and Deeper" by Jorge Cham [www.phdcomics.com](www.phdcomics.com)](/img/current_image_5.png)

**Figure 5:** "Piled Higher and Deeper" by Jorge Cham [www.phdcomics.com](www.phdcomics.com)

----

Many academic plant image analysis tools suffer from a lack of long-term maintenance. A couple of years after its publication, a tools has a good chance to be left un-maintained and to quickly become obsolete (new algorithms, incompatible operating systems, ...). No one is to blame for this phenomenon but the way Academia works. Here is my understanding of the image analysis tool life cycle:

1. For a specific Project, you need to analyse a lot of plant images.
2. Unfortunately, the ideal Tool for your research does not exist, so you decide to hire Jane, an image analysis specialist, to develop what you need. 
3. After a couple of years, the Tool is developed, tested and described in a nice Paper.
4. Once published, the Tool continues to be used in your Lab. Jane does some support and improvements.
5. Jane's funding ends and she moves to another lab. She does not have time for users support anymore. And let's be honest, support cannot be published...
6. The Project ends and you are not using the Tool anymore.
7. Windows XP is not supported anymore. The Tool does not work on Windows 8.
8. The Lab changed its website. The reference in the Paper is not valid anymore.
9. Nobody remembers the Tool. 

While this story might be caricatural, I believe there is some truth in it. It takes a lot of time and effort to keep a software up to date and long term support is not well valorised in academia. However, I believe some simple steps can be taken to increase the life-span of a new tool: 
  
1. Use well-known image analysis framework such as MatLab or, even better (it's free), ImageJ or Fiji. You will not have to worry about the operating system compatibility, they will do it for you.

2. Make your code open-source and share it on version control repositories (Github, SourceForge). Other developers will be able to help you maintain the code.


### Wanted: plant image analysis specialists

Although image analysis is becoming an important field in plant sciences, the number of trained computer scientists coming to the field remains limited (sorry, no numbers to validate this feeling...). It seems that other fields, such as biomedical sciences are more attractive and have more money to hire freshly graduated specialists. This is a pity because plant sciences is a great place to work for computer scientists. So here is the message I'd like to say to any computer scientist reading this post:

- We have a **lot** of complex issues that still need to be solved.
- Roots, veins and neurons have a lot in common.
- No ethical issues in plant sciences. We will gladly provide **thousands of images** and kill **hundreds of plants** if you ask for it.
- Most of us are not afraid of playing with some code. We do not necessary need a ready-to-use solution.
- Plant biologists are nice fellas.
- You'll help feed to world!



###  Additional Resources

- If you want to stay up to date with the existing plant image analysis tools, go check the [plant-image-analysis.org](http://www.plant-image-analysis.org) website.
- Most of the figures in this post are coming from a [presentation I made](http://figshare.com/articles/Plant_image_analysis_tools_current_trends_and_future_challenges/1169928) at the IAMPS 2014 workshop. All data are coming from the [plant-image-analysis.org](http://www.plant-image-analysis.org) website.

### Cited littérature

- Das, A., Bucksch, A., Price, C. A., & Weitz, J. S. (2014). ClearedLeavesDB: an online database of cleared plant leaf images. Plant Methods, 10(1), 1–8. doi:10.1186/1746-4811-10-8
- Lobet, G., Pound, M. P., Diener, J., Pradal, C., Draye, X., Godin, C., et al. (2015). Root System Markup Language: toward a unified root architecture description language. Plant Physiology, pp.114.253625. doi:10.1104/pp.114.253625
