---
layout: post
title: Rhizoponics, the story behind the paper
author: Guillaume Lobet
---

<div class="message">

This post was written following the publication of the following article:

 <a href="http://www.plantmethods.com/content/11/1/3/abstract">Mathieu et al. 2015, “Rhizoponics”: a novel hydroponic rhizotron for root system analyses on mature *Arabidopsis thaliana* plants, Plant Methods, 11:3</a>

</div>


About two years ago, we ([Laura Mathieu](http://www.phytosystems.ulg.ac.be/en/groups/plant-physiology/members/laura-mathieu), [Pierre Tocquin](http://www.phytosystems.ulg.ac.be/en/groups/plant-physiology/members/pierre-tocquin), [Claire Périlleux](http://www.phytosystems.ulg.ac.be/en/groups/plant-physiology/members/claire-perilleux) and myself) started to think about an efficient way to monitor the development of the Arabidopsis root system from the seedling to the flowering stages. 

### Why we needed something new...

The first obvious solution was to try to grow plant in rhizotrons, which we did. Although the plants grew well and seemed quite happy, we weren't entirely satisfied with this setup for three mains reasons: 

- we could not see all the roots, only the ones touching the transparent side of the device

- we did not have a full control on the root environment (e.g. water and nutrient availability)

- we did not have an easy, non-destructive access to the roots for sampling

People in our [lab](http://www.phytosystems.ulg.ac.be/en/groups/plant-physiology/members/) have been successfully using an [hydroponic setup](http://wwww.araponics.com) for both Arabidopsis and tobacco. The main advantages of this technique is that it allows a good control and homogeneity of the root environment. It also enable the plant to complete its full life cycle (from seed to seed). However, the main issue was that roots, although they are easily accessible for sampling, are completely tangled, preventing any kind of root system architecture observation.

Next, we tried to use the pouches techniques [Hund et al 2009], but it wasn't working so well for Arabidopsis plants. We faced two main issues: the roots were growing *inside* the filter paper and, as is it well known with this technique, we had a rapid development of fungi in the setup. So it wasn't the right solution for us either.

We then decided to try to combine both the advantages of the rhizotrons and the hydroponics setup. We needed a setup that provides a mechanical support for the root to grow in the nutrient solution. 

### The design process

The first tests we performed consisted on transferring young plants (from petri dishes) to different types of fabrics, themselves submerged in nutrient solution. While some fabrics did not work at all (mesh either to wide or too narrow), one of them (a narrow black nylon mesh called "crinoline") proved to be working well for Arabidopsis plants. A nice surprise was that the roots grew following the mesh and few of them were loose in the nutrient solution.


Once we found the right fabric, we decided to design a holder that could support the mesh in the nutrient solution and allows an easy manipulation of the setup. We wanted something fast to build, light and not too expensive. We produced the first prototypes (about 10) in collaboration with the mechanical workshop of the [university](http://www.ulg.ac.be). They turn out to be working well, but were a bit too heavy and expensive for our taste. We simplified the design and reduced both at once (the unit price was strongly linked with the amont of material required). This time, we asked the guys at the workshop to produce 50 of them. The great thing about having access to such workshop was that they had very competitive prices. The downside was that, because they were only a couple of workers and they had many projects, it took them 4 months to produce all the frame... Fortunately, when we go them, they worked perfectly and since they haven't been resting for long


- **A.** Picture of the rhizoponic setup.
- **B.** Blueprint of the assembled setup.
- **C.** Blueprint of the composing parts.
- **D.** Picture of the overall growing setup.


<img src="/img/rhizoponics/rhizoponic-2.png" alt="rhizo2" width="50%">


### Imaging the plants

Design the setup was only one part of the story. Since we wanted to be able to track the root system development during the whole growth period, we needed to find a way to efficiently image the root system, with a minimal disturbance for the plant. After trying out different option (direct lightning, backlighting, ...). We ended up using a low tech, Do It Yourself setup composed of:


- **A.** a regular CCD camera
- **B.** a frame holder
- **C.** an indirect lightning
- **D.** a dark background.

<img src="/img/rhizoponics/rhizoponic-1.png" alt="rhizo1" width="50%">


As a result, we could fairly well discriminate the roots from the mesh, which was  critical for the image analysis. In the end, the quality of the images was such as we could perform both a global analysis of the root system (depth, width, surface) using a [custom made ImageJ macro](https://github.com/guillaumelobet/rhizoponics) as well as a local analysis (lateral density, lateral length, ...) using [SmartRoot](http://www.guillaumelobet.be/codes/smartroot).

<img src="/img/rhizoponics/rhizoponic-3.png" alt="rhizo3" width="100%">

**Examples of images obtained in our setup**

### The publication process

At some point, we decided that it was worth trying publishing our technique. It was working very well in our lab, and we wanted to share it with the Plant Science Community. So we started by making a *proof of concept* experience, demonstrating the panel of measurements our system allowed. We analysed the root architectural difference between mock and cadmium treated plants. Then, we chose to submit to the open-access journal Plant Methods, with which I had good experience in the past. As usual, the reviewing process was fast and, we were gladly happy about that, highly positive ([see the reviews](https://www.dropbox.com/s/3vros8tafeweulu/Responsetoeditorandreviewers.pdf?dl=0)). In two month, the paper was published and here we are!


### Miscellaneous tips

- If you make heavy metal experiment and want to clean the frame with hydrogen chloride (HCl), **DON'T**. We’ve tried.... You will end up with a lot of smoke (most likely unfriendly to your lungs), a nasty smell and a bunch of melted aluminium frame... It looked roughly [like this](https://www.youtube.com/watch?v=VZD-LIPiFyk#t=61).

- for better results, try to keep the mesh as straight as possible in the frame. A wavy mesh will produce a lot of noise in the pictures and the roots might grow out of it.

- If you have any questions or suggestions, leave us a comment below (or contact me by [e-mail](http://www.guillaumelobet.be))!


### More informations and data

- [Mathieu et al. 2015, “Rhizoponics”: a novel hydroponic rhizotron for root system analyses on mature *Arabidopsis thaliana* plants, Plant Methods, 11:3](http://www.plantmethods.com/content/11/1/3/abstract)
- [Reviews + response](https://www.dropbox.com/s/3vros8tafeweulu/Responsetoeditorandreviewers.pdf?dl=0)
- [Github repository (blueprints, codes, ...)](https://github.com/guillaumelobet/rhizoponics)
- [Our lab](http://www.phytosystems.ulg.ac.be/en/groups/plant-physiology)

{% include twitter_plug.html %}
