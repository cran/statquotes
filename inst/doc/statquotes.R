## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----echo=FALSE, results='asis'-----------------------------------------------
library("statquotes")
library("utils")
f <- statquotes::get_quotes()
n <- nrow(f)
invisible(lapply(1:n, function(i) { cat(sprintf("%i.", i), 
                                        as.markdown(f[i,], cite=TRUE,
                                                    form = "%s\n\n     -- *%s*\n"),
                                        ifelse(is.na(f[i,]$tags), "\n\n", 
                                                     paste0('~(*#', f[i,]$tags, "*)~\n\n")))}))

