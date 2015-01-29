---
layout: post
title: How to choose the right root image analysis software
author: Guillaume Lobet
---

In this post, I will try to point out the most important characteristics you will have to consider while choosing your root image analysis software.

Very often, there is a strong link between an experimental design and the software used to treat the root images. Be careful that you should **not be designing your experiment according to the available software** in your lab, but the other way round. As there is more and more available software, the field of possible analysis widens. Do not hesitate to** try different software** to find the one that suits your needs.

<h3>The type of measurement</h3>

As I just said, the software you will use to analyze your data will depend on your experiences needs. Check out **which kind of measurement** is performed by every software before picking one.

<h3>The raw image type and quality</h3>

Both the image type (jpg, tiff, ...) and quality can restrict the number of potential root software you might use for your analysis. Some software can only open a **limited number of image type** and most of them were designed for a **specific kind of image** (scanned roots, mini-rhizotrons, ...).

<h3>Free or commercial</h3>

The main advantage that **commercial software** offers is a guarantee of **quality** and **support**. As long as you pay for it, you will get something in return (at least in principle).It might seem obvious, but the advantage of **free software** is that you **do not pay** for them. This might be an important point as research teams do not always have money to buy costly products. Be aware that some **freeware are built on commercial** frameworks such as Matlab. In this case, if you do not have this framework already installed on your computer, you will have to buy it before being able to install the desired freeware.

<h4>About quality:</h4>

There exist some very good quality freeware that can compete with commercial ones. There is two ways you can check the quality of a freeware: you **try it yourself** or you check if there is a **scientific paper** describing the software and if **other people are using it**. Just type the name of the software in the <a title="ISI web" href="http://isiknowledge.com/wos">ISI database</a>, <a title="ISI web" href="http://www.scopus.com">Scopus</a> or <a href="http://scholar.google.com">Google Scholar</a> to find it out.

<h4>About support:</h4>

Lets face it, commercial softwares offer better user support than free ones. Freeware support often depends on the developer who might not even be working on that project anymore. And for specific software, a support team is often and advantage

<h3>The degree of automation</h3>

We can divide root analysis software according to their degree of automation (or user input, which is the exact opposite): **fully automated**,** semi-automated **and** fully manual**.The ideal solution, especially if you have a lot of image to analyze, is obviously to choose a fully automated software. The perfect software would, indeed, allow you to choose any kind of measurement, load any kind of image and perform the analysis by itself. There is just one problem: this software does not exist (yet). Here are two reasons why:


-Actual automated analysis **rely on the image kind**. They are often designed for one specific type of image (time-series, mini-rhizotron, ...)
-Automated software often analyze a **limited** **number** **of** **variables** (length, diameter, ...)


If we look at all the available software, we can generally observe a **trade-off between** their degree of **automation** and their **flexibility**.So if your **images** and **needs match the requirements and capabilities** of an automated software, it will work great. If they do not match, these software might not be able to analyze you image and if they do, they might generate false results. In such case, you will have to choose a less automated solution.Even if you do not choose a fully automated solution, it is possible to **limit the amount of work** during the analysis. Depending on the type of variable you want to retrieve, you can restrict the analysis to part of the image. As an example, it is possible to a have statistically significant estimation of† root diameters by looking at selected part of the root system. A global analysis is not always required.

<h3>The portability of the data</h3>

Once you are done analyzing your root images, it is important that you can use the generated data for **further analysis**. The image analysis is often the very first step in the overall analysis pipe and if your software gives you useless data files, there is not point using it.In my opinion, you should be able to export you data to **free standards** such as csv, txt or xml and not only to proprietary types.

<h3>The user interface</h3>

This might seem stupid, but the user interface could be an important factor while choosing a software. If you plan to spend hours analyzing images, a crappy user interface† can quickly become counter-productive.The user interface as to be **intuitive** (you do not want to search the correct button every time you want to perform an action) and **efficient** (a sub-sub-sub-menu is not a right choice for an important tool). You might also want an interface having a nice design, but this is optional...

<h3>In conclusion</h3>

The biggest constrain while choosing a root image analysis software is often the adequacy between the measurement you plan to make and the capabilities of the software. All the other constrains can be circumvent one way or an other. Just **try out the different software** to found your perfect match.

{% include twitter_plug.html %}
