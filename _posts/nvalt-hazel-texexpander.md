---
type: post
title: Efficient note taking using nvAlt, TextExpander and Hazel.
author: Guillaume Lobet
---

![legend ](/img/nvalt/hazel-nvalt.png)

The aim of this post is the share the setup I came up to write down and organise notes / reports / articles. My workflow is based on three essential tools: 

- [nvAlt](http://brettterpstra.com/projects/nvalt/): for fast and easy markdown writing
- [TextExpander](http://smilesoftware.com/TextExpander/index.html): for a faster typing
- [Hazel](http://www.noodlesoft.com/hazel.php): for a better organisation.

<div class="message">
I am afraid this workflow is only for Mac users, since neither Hazel nor TextExpander are available for Windows..
</div>

## Part 1: Writing using nvAlt

nvAlt is a forked version of [Notational Velocity](http://notational.net/), an application to write, store and retrieve plain text notes. I will not be long on the multiple qualities of nvAlt, as [others have done the exercice before](http://www.macworld.com/article/2047073/nvalt-review-makes-writing-and-finding-plain-text-notes-simple.html). I use it for three reasons:

- Markdown and MultiMarkdown support
- Fast and lightweight
- Clean and easy to use.


## Part 2: Generating the metadata using TextExpander

TextExpander is Mac utility that was designed to rapidly write down piece of frequently-used text. [Here is a short tutorial to TextExpander](http://lifehacker.com/a-comprehensive-guide-to-textexpander-1616374942).

In my case I use TextExpander to automatically generate the meta data of my markdown notes. In addition, TextExpander prompt me to choose a folder where I want to store my notes (in addition to the nvAlt folder).


![legend ](/img/nvalt/textexpander.png)


The TextExpander, written in AppleScript, looks like this: 

	tell application "System Events"
    	set applicationName to (name of every process whose frontmost is true) as string
	end tell

	using terms from application "AppleScript Editor"
    	tell application applicationName
        	set expansionString to POSIX path of (choose folder with prompt "Please select a file.")
    	end tell
	end using terms from

	return "— \n type: post \n title: My great post\n author: Guillaume Lobet \n xpath:" & expansionString & "mynote.md \n—"
	
Notice the `xpath` field in the metadata? This is the important part, used be Hazel to sort the notes in various folders (see below).


## Part 3: Sorting the files using Hazel

The only drawback of nvAlt is that all your notes are stored in the same place. This is great to find everything, but if, like me, you like to have a tidy, hierarchical folder structure, it is a bummer...

Fortunately, this is where Hazel comes into play. Hazel is an utility to automate your computed organisation. In short, you ask Hazel to keep an eye on folders, and apply actions to the files they contain. Again, for a short introduction, see [elsewhere](http://computers.tutsplus.com/tutorials/9-hazel-rules-to-increase-your-productivity--mac-47144).

In my case, I use Hazel to

- watch my nvAlt notes folder
- look for recently modified files
- look for files that contains the term `xpath` in the metadata
- copy the note to file specified by `xpath`

The Hazel rule look like this:

![legend ](/img/nvalt/hazel.png)

You need two conditions:

- Contents -> contain match -> xpath:
- Date Last Modified -> is -> Today

Then, ask Hazel to do the following:

- Run shell stript -> embedded script

And in the script (click on the `i` icon), you paste:

	P=$(grep "xpath:" $1) 
	arr=($(echo $P | tr ":" "\n"))
	cp $1 ${arr[1]}
	
This will tell Hazel to copy the file to the desired place. And Voilà!

## Part 4: Start to write

Now all you need is to create a new note in nvAlt, call the TextExpander snippet, choose where you want to copy your note and start writing.

Enjoy!


{% include twitter_plug.html %}



