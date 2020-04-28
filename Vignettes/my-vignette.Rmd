---
title: "my-vignette"
author: "David Dean"
date: "04/27/2020"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{my-vignette}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---
```{r, include = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
```


#### Load the package by using the library function as seen in the code block below:
```{r setup}
library(tfpackage)
```

#### Type the last name of the guest in the 'pick' function to generate information from dataset:
```{r}
pick("Robbins")

```

#### Use the 'category' function to subset the Healthy (1), Wealthy (2), or Wise(3) guests:
```{r}
category(3)

```

```{r, include = FALSE}
##Vignettes are not able to use objects in a package that have not been assigned while in a vignette. This code, which will not be seen, is me reading the csv into the object names that are used in the actual package. If this does not work on your computer then you should confirm that your saved file path matches EXACTLY

TFtot <- read.csv("~/MyPackageTF/TimFerrisToolsofTitanscsv1.txt.csv")
   View(TFtot)
   
TFnoqtot <- TFtot
TFnoqtot$Quote <- NULL

```

#### Load the oject 'TFnoqtot' in order to see the full guest list:
```{r}
TFnoqtot

```


- My goal for this project was to create a fun, user-friendly package of R code that allowed one to search for information about specific guests in a book by Tim Ferris titled, "Tools of Titans." Tim Ferris is known for interviewing world-class performers in many domains. 

- The 112 person guest list from Tools of Titans is divided into 3 main categories: Healthy (1), Wealthy (2), and Wise (3). 

- I've included a quote from each guest that appears in this book by Tim Ferris as well as their Twitter handle and the number of Twitter followers each guest has as of this publishing. This package takes advantage of subset and gripl functions to organize the data set. 

