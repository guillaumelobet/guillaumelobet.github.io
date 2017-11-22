
library(scholar)
library(yaml)
library(stringdist)

auth <-"XHIe6wsAAAAJ"

profile <- get_profile(auth)
pubs <- get_publications(auth)


rs <- yaml.load_file("~/Dropbox/science/outputs/websites/guillaumelobet.github.io/_data/publications.yml")
cites <- c()
match <- NULL
for(i in 2:length(rs)){
  rs[[i]]$citations <- '0'
  ti <- rs[[i]]$title
  print(ti)
  print(stringdist(ti, pubs$title))
  index <- amatch(ti, pubs$title, maxDist = 10)
  if(!is.na(index)){
    match <- rbind(match, data.frame(source=rs[[i]]$title, target=pubs$title[index]))
    rs[[i]]$citations <- pubs$cites[index]
    cites <- c(cites,rs[[i]]$citations)
    # message(paste0(rs[[i]]$title, " : ", rs[[i]]$citations))
  }
}

cites <- round(as.numeric(cites))
cites <- sort(cites, decreasing = T)
hindex <- 0
for(i in 1:length(cites)){
  if(i <= cites[i]) hindex <- hindex+1
} 

rs[[1]]$hindex <- as.character(hindex)
rs[[1]]$citations <- as.character(sum(cites))
rs[[1]]$update <- format(Sys.time(), "%Y-%m-%d")

cat(as.yaml(rs,  indent = 3), 
    file=paste("~/Dropbox/science/outputs/websites/guillaumelobet.github.io/_data/publications.yml",sep=""), sep='\n') # Create the input file for Archisimple

