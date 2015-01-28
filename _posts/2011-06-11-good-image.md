---
layout: post
title: What makes a root image suitable for analysis?
author: Guillaume Lobet
---


The quality of an image is central if you want to get useful information out of it. Even the best software will not be able to analyse crappy images, so it is crucial to think about what makes a good image and how to acquire it. Usually, you will have the opportunity to improve your images at different steps of the process:

- the growth of the plant (substrate, ...)
- the image acquisition (the type of devise)
- the image preparation (thresholding,.. )
- the image analysis (the type of measurement, software)

![Image analysis pipeline](/img/good-image-1.png)

**Figure 1.** Image analysis pipeline



### Image resolution

The resolution of an images describe the details an image holds. It is often express as the number of pixels per surface unit. In the Anglo-Saxon system, the resolution is expressed in Dots Per Inch (DPI).

![The same object represented with different resolution](/img/good-image-2.jpg)

**Figure 2.** The same object represented with different resolution


The first rule is that the greater the DPI value is, the more information is contained into the image. The drawback is that if you increase the resolution of your image, its size will also increase and it might get too large for manipulation and analysis (some software have a limit in the size of the image they can analyse).For root images, the **optimal quality** of the image can be guested if you have an idea of the diameter of the root you want to analyse. This diameter, multiplied by the DPI value will tell how many pixels will be representing† your roots (if you work in cm, do not forget to divide the DPI by 2.54). This "**pixel diameter**" will be the one ultimately influencing the image analysis processFor instance, a primary maize root, having a diameter of 0.1 cm, will be represented by 12 pixels if the image resolution is 300 DPI, 24 for 600 DPI and so on. In this situation, a 300 DPI image will be enough for your analysis.The image resolution is often determined by the type of devise you use to get your image (camera, scanner, ...).

### Image contrast

The contrast of an image is the colour difference between the object you want to† analyse and the background of the image. This difference is important for the analysis software as it will allow it to separate the root objects from the environment.

![Images having different contrast between the root object and the background](/img/good-image-3.jpg)

**Figure 3.** Images having different contrast between the root object and the background

For analysis purpose, the bigger the contrast is between the root and the background, the better the analysis will be.The contrast is generally defined by the image acquisition environment (your experimental set-up) but can also easily enhanced using some image manipulation techniques, as I will show in future posts.

### Root crossing and overlapping

One quality parameter which is specific to root image is the quantity of root crossing and overlapping.

![Example of root overlap](/img/good-image-4.jpg)

**Figure 4.** Example of root overlap


If two roots are superposed on the image, it will not be possible any more to distinguish them and the information you will retrieve from the image will not be correct.Three strategies can be used to work around this issue.The first will be to carefully **separate the roots** before you take the image in order to avoid any crossing or overlapping. This strategy is of course the better for the subsequent analysis but turns to be highly time consuming for mature root systems. More over, it is only applicable for scanner-type images and not for images of <em>in-situ</em> root systems.Secondly, if you analyse the root system of **young plants**, the reduced number and size of the lateral roots will prevent crossing and overlapping issues. This solution unfortunately constrain your experimental design.Finally, the third option will be to **analyse only part of the image** in which the amount of root overlap is negligible. This strategies implies that you are not interested in global parameters (i.e. total root length), but in parameters that can be estimated locally (i.e. diameter or inter-branch distance).

### Dirts

![Example of dirts in a root image](/img/good-image-5.jpg)

**Figure 5.** Example of dirts in a root image


When root are not grown in systems such as aeroponics or agar, the image you will get might be full of dirt particles, on and around your roots.Again, these particles can distord you measurement such as root diameter or root number (for large dirt particles) so it is always better to get rid of them.Of course, the first way would be to **clean your root** before the image acquisition step, but, as for the root separation it could be highly time consuming.Fortunately, as I will show in a future post, you **image can be easily cleaned** from all the particles surrounding your roots. There is even some trick to get rid of the particles sticking to your roots.

### The type of measurement

Finally, one major limitation to the type of image you wan use in your analysis is the type of measurement you plant to do on them.If you want to have **global data** such as total root length and a detailed description of the architecture (connection, topology), the roots on the images will have to be perfectly separated and still all connected.On the other hand, if you only need **variable that can be estimated locally**, such as root diameter of branching densities, the quality of your image can be lower and the time you will spend to prepare your roots before the acquisition will be highly decreased.

{% include twitter_plug.html %}
