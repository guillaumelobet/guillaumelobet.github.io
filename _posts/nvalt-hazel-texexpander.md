---
type: post
title: Efficient note taking using nvAlt, TextExpander and Hazel.
author: Guillaume Lobet
---

![legend ](/img/nvalt/hazel-nvalt.png)

As I scientist, I write a lot and in various ways. I write notes and ideas. I write projects. Papers. Reviews. Blog posts. Codes. Pretty much everything. As a consequence, I need the right tools to write, organise and find all these document. I also like to keep my folders well organised (by projects / experiments / ...). This is important, as I want my different project folders to be complete and contains everything related to the project. On top of that, I am a plain text lover (fast, light and not compatibility issues). So my writing workflow has to be:

- centralised (to find everything quickly)
- distributed (for a tidy organisation)
- in plain text (markdown is even better)
- lightweight and fast

The aim of this post is to share the **writing setup** I came up with. It is not perfect yet (any suggestions are welcome!), but it is getting efficient. My workflow is based on three essential tools: 

- [nvAlt](http://brettterpstra.com/projects/nvalt/): for fast and easy markdown writing
- [Hazel](http://www.noodlesoft.com/hazel.php): for an automated organisation.
- [TextExpander](http://smilesoftware.com/TextExpander/index.html): for a faster typing

<div class="message">
I am afraid this workflow is only for Mac users, since neither Hazel nor TextExpander are available for Windows..
</div>

## Part 1: Writing using nvAlt

nvAlt is a forked version of [Notational Velocity](http://notational.net/), an application to write, store and retrieve plain text notes. I will not be long on the multiple qualities of nvAlt, as [others have done the exercice before](http://www.macworld.com/article/2047073/nvalt-review-makes-writing-and-finding-plain-text-notes-simple.html). The bottom line is that it meets three of my initial requirement:

- It is centralised and allow a fast retrieval of any notes
- It is fast and lightweight
- It support plain text, rich text, Markdown and MultiMarkdown.

The only thing it does not do, is keep the different notes in my folder structure. And this where Hazel comes into play. But before going to Hazel, I first need to quickly describe the basic structure of my notes. They all contain a header with the following metadata:

	---
	type: post
	title: My title
	author: Guillaume Lobet
	xpath:/myfolder/myfile.md
	---
	Lorem ipsum dolor sit amet, consectetur adipisicing elit, 

Notice the `xpath` field in the metadata? This is the important part, that will be used by Hazel to sort the notes in various folders (see below). 

## Part 2: Sorting the files using Hazel

Hazel is an utility to automate your computed organisation. In short, you ask Hazel to keep an eye on folders, and apply actions to the files they contain. Again, for a short introduction, see [elsewhere](http://computers.tutsplus.com/tutorials/9-hazel-rules-to-increase-your-productivity--mac-47144).

In my case, I use Hazel to

- watch my nvAlt `Notes` folder
- look for recently modified files
- look for files that contains the term `xpath` in the metadata
- copy the note to the file specified by `xpath`

The Hazel rule look like this:

![legend ](/img/nvalt/hazel.png)

You need two conditions:

- Contents -> contain match -> `xpath:`
- Date Last Modified -> is -> Today

When these conditions are met, ask Hazel to do the following:

- Run shell stript -> embedded script

In the script editor(click on the `i` icon), write down the following lines:

	P=$(grep "xpath:" $1) 
	arr=($(echo $P | tr ":" "\n"))
	cp $1 ${arr[1]}
	
This will tell Hazel to copy the file to the desired place. This will keep you notes both organised (in the Notes folder) and distributed (in your folder hierarchy)! Voilà!



## Part 3: Generating the metadata using TextExpander

If you want to push the automation a bit further, you can add TextExpander to the workflow. TextExpander is Mac utility that was designed to rapidly write down piece of frequently-used text. [Here is a short tutorial to TextExpander](http://lifehacker.com/a-comprehensive-guide-to-textexpander-1616374942).

In my case I use TextExpander to automatically generate the metadata of my markdown notes. In addition, TextExpander prompt me to choose a folder where I want to store my notes (the `xpath` field).


![legend ](/img/nvalt/textexpander.png)


The TextExpander snippet I use is written in AppleScript and looks like this: 

	tell application "System Events"
    	set applicationName to (name of every process whose frontmost is true) as string
	end tell

	using terms from application "AppleScript Editor"
    	tell application applicationName
        	set expansionString to POSIX path of (choose folder with prompt "Please select a file.")
    	end tell
	end using terms from

	return "— \n type: post \n title: My great post\n author: Guillaume Lobet \n xpath:" & expansionString & "mynote.md \n—"


Once called, this snippet will automatically create the following metadata:

	---
	type: post
	title: My great post
	author: Guillaume Lobet
	xpath:/myfolder/mynote.md
	---



## Part 4: Start to write

Now all you need is to create a new note in nvAlt, call the TextExpander snippet, choose where you want to copy your note and start writing!

Enjoy!


{% include twitter_plug.html %}



