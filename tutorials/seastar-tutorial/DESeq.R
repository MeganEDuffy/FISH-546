# DESeq2 in R : Differential Expression #
# 2016-10-28, week 4 quiz for FISH 546

#DESeq2 documentaion: http://www.bioconductor.org/packages/devel/bioc/vignettes/DESeq2/inst/doc/DESeq2.pdf

# Step 1: Install DESeq2 R package from Bioconductor and import library

source("https://bioconductor.org/biocLite.R")
biocLite("DESeq2")
library(DESeq2)

# Step 2: Set local working directory
# note: I had used curl to get count data from github repo (Phel_countdata.txt) 
# see ./seastar-tutorial/01-get-data.ipynb)

setwd("/Users/meganduffy/Documents/git-repos/FISH-546/tutorials/seastar-tutorial")

# Step 3: Import data and build objects (show dimensions)

data <- read.table("./data/Phel_countdata.txt", header = T, sep = "\t")
rownames(data) <- data$Feature
data <- data[,-1]
dim(data)


# Step 4: Build frames for data with "treated" and "control"

deseq2.colData <- data.frame(condition=factor(c(rep("Treated", 3), rep("Control", 3))), type=factor(rep("single-read", 6)))
rownames(deseq2.colData) <- colnames(data)
deseq2.dds <- DESeqDataSetFromMatrix(countData = data, colData = deseq2.colData, design = ~ condition)

# Step 5: Run DESeq2 differential expression analysis

deseq2.dds <- DESeq(deseq2.dds)
deseq2.res <- results(deseq2.dds)
deseq2.res <- deseq2.res[order(rownames(deseq2.res)), ]

head(deseq2.res)

# Step 6: Count the number of hits (when "treated," transcriptomes, are compared to "controls,") with adjusted p-value less than 0.05
dim(deseq2.res[!is.na(deseq2.res$padj) & deseq2.res$padj <= 0.05, ])


# Step 7: plot results

tmp <- deseq2.res

plot(tmp$baseMean, tmp$log2FoldChange, pch=19, cex=0.75, ylim=c(-3, 3), log="x", col="darkslategray3",
     main="DEG Virus Exposure  (pval <= 0.05)",
     xlab="mean of normalized counts",
     ylab="Log2 Fold Change")

# Step 7.1: Plot significant points a different color

tmp.sig <- deseq2.res[!is.na(deseq2.res$padj) & deseq2.res$padj <= 0.05, ]
points(tmp.sig$baseMean, tmp.sig$log2FoldChange, pch=20, cex=0.75, col="cornflowerblue")

# Step 7. 2: 2 FC lines

abline(h=c(-1,1), col="orangered")


# Step 8: Write tab-delimited table of genes that were differentially expressed
# This file is exported to ./seastar-tutorial/data directory

write.table(tmp.sig, "./data/Phel_DEGlist.tab", row.names = T)

# Step 9: Look at Phel_DEGlist.tab

head(tmp.sig)


### At this point, inspired by Yaamini and Laura, I converted the dowloaded Phel_transcriptome.fasta file into a .tab file using Galaxy (How many columns to divide title string into? = 1)

head(./Galaxy_Phel_transcriptome.tab)

#Step 10: Merge the two datatables modified from Galaxy

full_transcriptome <- read.table("./data/Galaxy_Phel_transciptome.tab") #tab file of full seastar transcriptome NOTE I SPELLED TRANSCIPTOME WRONG!
diffexpressedgenes <- read.table("./data/Phel_DEGlist.tab") #tab file of differentially expressed genes in seastars with wasting disease vs healthy

colnames(full_transcriptome) <- c("contig", "sequence") #add column names to full_transcriptome
head(full_transcriptome) #confirm addition of column names

install.packages("data.table")
library(data.table)
setDT(diffexpressedgenes, keep.rownames = TRUE) 

#convert row names to a separate column in diffexpressedgenes
colnames(diffexpressedgenes) <- c("contig", "baseMean", "log2FoldChange", "lfcSE", "stat", "pvalue", "padj")
head(diffexpressedgenes) #confirm addition of column names

Phel_diffexpressed_transcriptome <- merge(x = diffexpressedgenes, y = full_transcriptome, by = "contig") #merge two dataframes together

#Step 11: Remove all columns that are not "contig" and "sequence" (ie. remove "baseMean", "log2FoldChange", "lfcSE", "stat", "pvalue", "padj")

Phel_diffexpressed_transcriptome$baseMean <- NULL
Phel_diffexpressed_transcriptome$log2FoldChange <- NULL
Phel_diffexpressed_transcriptome$lfcSE <- NULL
Phel_diffexpressed_transcriptome$stat <- NULL
Phel_diffexpressed_transcriptome$pvalue <- NULL
Phel_diffexpressed_transcriptome$padj <- NULL
head(Phel_diffexpressed_transcriptome) #confirm column removal

#Step 12: Write out Phel_diff_transcritpome as a tab file. Need to remove row and column names using "row.names" and "col.names" arguments

write.table(Phel_diffexpressed_transcriptome, "./data/Phel_diff_transcriptome.tab", col.names = F, row.names = F)
?write.table

### The Phel_diff_transcriptome.tab will be converted (again with Galaxy) into a fasta file for use as  a database in BLAST 
