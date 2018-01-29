
library(yaml)
library("RCurl")
library("rjson")

rs <- yaml.load_file("~/OneDrive - UCL/04_outcomes/websites/guillaumelobet.github.io/_data/publications.yml")
cites <- c()
for(i in 1:length(rs)){
  rs[[i]]$citations <- '0'
  if(length(rs[[i]]$doi) > 0){
   print(rs[[i]]$doi) 
    tryCatch({
      doi <- rs[[i]]$doi
      path <- paste("http://api.elsevier.com/content/search/index:SCOPUS?query=DOI(",doi,")&field=citedby-count", sep="")
      f <- getURL(path, httpheader = c("X-ELS-APIKey" = "80a7454986241466e6f4abc519b26f49"), verbose = F)
      data <- fromJSON(f)
      ci <- as.character(round(as.numeric(data[[1]]$entry[[1]]$`citedby-count`), 0))
      if(length(ci) > 0) rs[[i]]$citations <- ci
      cites <- c(cites,rs[[i]]$citations)
      message(paste0(rs[[i]]$title, ":", rs[[i]]$citations))
    }, warning = function(w) {
      message(paste("http://api.elsevier.com/content/search/index:SCOPUS?query=DOI(",doi,")&field=citedby-count", sep=""))
      failed <- c(failed, pmid)
    }, error = function(e) {
      message(paste("http://api.elsevier.com/content/search/index:SCOPUS?query=DOI(",doi,")&field=citedby-count", sep=""))
      failed <- c(failed, pmid)
    })
  }
}

cites <- as.numeric(cites)
cites <- sort(cites, decreasing = T)
hindex <- 0
for(i in 1:length(cites)){
  if(i <= cites[i]) hindex <- hindex+1
} 

rs[[1]]$hindex <- as.character(hindex)
rs[[1]]$citations <- as.character(sum(cites))
rs[[1]]$update <- format(Sys.time(), "%Y-%m-%d")

cat(as.yaml(rs, precision = 3, indent = 3), 
    file=paste("~/OneDrive - UCL/04_outcomes//websites/guillaumelobet.github.io/_data/publications.yml",sep=""), sep='\n') # Create the input file for Archisimple
