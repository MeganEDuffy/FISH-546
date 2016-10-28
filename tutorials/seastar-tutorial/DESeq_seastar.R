#Step 1: Instal DESeq2 and Load Package
source("http://bioconductor.org/biocLite.R")
biocLite("DESeq2")
browseVignettes("DESeq2")
library(DESeq2)

#Step 2: Read in data for tutorial
data <- read.table("Phel_countdata.txt", header = T, sep = "\t")
rownames(data) <- data$Feature
data <- data[,-1]