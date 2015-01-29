---
layout: post
title: Using thresholding method on root images
author: Guillaume Lobet
---


Many root image analysis procedures have a thresholding step in their workflow (e.i. WinRHIZO or EZ-RHIZO). The thresholding step aims at segmenting the original image (fig. 1A) in two parts: the "object" (the roots) and the "background", and to assign to each of them a different pixel value (typically 1 and 0). The subsequent binary image (fig. 1B) can be used, for instance, to generate a "root skeleton" (fig. 1C) or to estimate root diameter.


<img src="/img/threshold_workflow.jpg" alt="threshold workflow" width="100%">

**Figure 1.** A. Original image. B. Binary image. C. Skeleton


Even if **thresholding** is a common image manipulation, it** has to be performed carefully** on root images. Indeed, the threshold value, defining the separation between the objects and the background, can have a great influence on the obtained binary image and therefore on the final results.Inappropriate threshold value can lead to a poor segmentation, typically "forgetting" the thinner roots (fig. 2B) or "creating" roots that are too large (fig. 2C).

<img src="/img/threshold_diam.jpg" alt="threshold diameter" width="100%">

**Figure 2.** A. Original image. B. Threshold is too low, thinner roots where not selected. C. Threshold is too high, roots are too large


<h3>How to choose a threshold value?</h3>

As the threshold value influences the final results of the analysis it important the follow an identical methodology for the all the roots of the same experiment (or group of experiments). For this reason, it is not recommended to visually determine a threshold on every images as the human estimation could vary over time. It is also important that all the images of the same experiment have been acquired in the same conditions (light, devise, background, resolution, etc).

<img src="/img/imagej_threshold.jpg" alt="imagej threshold" width="100%">

**Figure 3.** ImageJ thresholding window


The type of analysis that has to be done at the end of the image processing also influences the choice of a threshold . The image requirement are not the same if you want to analyse root length (all the roots have to be on the image) or root diameter (root diameter has to be the same on the original and binary image).In ImageJ, thresholding an image can be achieved with the function <span style="color: darkgrey;"><em>Image &gt; Adjust </em>&gt; <em>Threshold</em></span>. The threshold can then be set either manually or automatically with one of the implemented <a title="Thresholding algorithm description" href="http://fiji.sc/wiki/index.php/Auto_Threshold" target="_blank">thresholding algorithm</a> (fig. 3).

<h4>Manual threshold</h4>

Manual threshold value can be used if the **same value is used for all the images**. It can be evaluated on a typical (or several) image and then applied to all of them in the analysis workflow.

<h4>Automatic threshold</h4>

<a href="http://fiji.sc/wiki/index.php/Auto_Threshold" target="_blank">Automated thresholding algorithms</a> define a threshold value based on the image pixels statistics (mean, mode, histograms, etc). The use of such and algorithm might lead to different threshold values for the different images, but always based on an the same logic. For instance, visually thresholding the same image two days in a row might lead to different values while a predefined algorithm will choose always the same.As for the manual threshold, the choice of the appropriate algorithm has to be done on one or several typical images. This **algorithm has to be applied to all the images** of the experiment.

In a <a href="http://www.sciencedirect.com/science/article/pii/S0378429011000414" target="_blank">recent paper</a>, Tajima and Kato have tested the different algorithms implemented in ImageJ to analysed scanned images of rice roots. Their conclusion was that the Triangle algorithm was the more appropriate for rice root images (compared to <a title="WinRHIZO" href="http://www.root-image-analysis.org/?p=160" target="_blank">WinRHIZO</a>). Here, I would like to quote <a title="Pierre Soille" href="http://isferea.jrc.ec.europa.eu/Staff/Pages/Soille.aspx">Pierre Soille</a> who said that:

<blockquote>...any non-specialist faced with an image analysis problem rapidly realises that a unique image transformation usually fails to solve it.</blockquote>


The idea is that a single method, even if it is highly appropriate for a specific application, might not be good enough for slightly different usage. In this particular example, the Triangle algorithm works great with scanned root images having a good contrast, but is not optimal for images having an uneven background and a poor contrast...**An algorithm has to be always validated on a specific image before using it.**

{% include twitter_plug.html %}

