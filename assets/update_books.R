

# load packages
library(RCurl)
library(XML)
library(yaml)


rs <- yaml.load_file("~/Dropbox/science/outputs/websites/guillaumelobet.github.io/_data/book.yml")

for(i in 1:length(rs)){
    print(rs[[i]]$goodread) 
    tryCatch({
      ref <- rs[[i]]$goodread
      
      # download html
      html <- getURL(paste0('http://www.goodreads.com/book/show/', ref), followlocation = TRUE)
      html <- readLines(tc <- textConnection(html)); close(tc)
      doc = htmlTreeParse(html, useInternalNodes = TRUE)
      
      # Get cover image
      plain.text <- xpathSApply(doc, "//img[@id='coverImage']", xmlAttrs)
      rs[[i]]$image <- plain.text[3]
      
      # Get book title
      plain.text <- xpathSApply(doc, "//meta[@property='og:title']", xmlAttrs)
      rs[[i]]$title <- plain.text[1]
      
      # Get ISBN
      plain.text <- xpathSApply(doc, "//meta[@property='books:isbn']", xmlAttrs)
      rs[[i]]$isbn <- plain.text[1]
      
      # Get author
      rs[[i]]$author <- xpathSApply(doc, "//a[@class='authorName']/span", xmlValue)[1]

      
      rs[[i]]$author <- gsub("Ã¨", "è", rs[[i]]$author)
      rs[[i]]$author <- gsub("Ã©", "é", rs[[i]]$author)
      rs[[i]]$author <- gsub("Ã«", "ë", rs[[i]]$author)
      rs[[i]]$author <- gsub("Ã", "E", rs[[i]]$author)

      rs[[i]]$title <- gsub("Ã¨", "è", rs[[i]]$title)
      rs[[i]]$title <- gsub("Ã©", "é", rs[[i]]$title)
      rs[[i]]$title <- gsub("Ã«", "ë", rs[[i]]$title)
      
      rs[[i]]$url <- paste0('http://www.goodreads.com/book/show/', ref)
      
            
      message(rs[[i]]$title)
    }, warning = function(w) {
      message()
      failed <- c(failed, pmid)
    }, error = function(e) {
      message()
      failed <- c(failed, pmid)
    })

}

cat(as.yaml(rs, precision = 3, indent = 3), 
    file=paste("~/Dropbox/science/outputs/websites/guillaumelobet.github.io/_data/book.yml",sep=""), sep='\n\n\n') # Create the input file for Archisimple

