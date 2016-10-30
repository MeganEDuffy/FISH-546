###Differential Gene Expression in Sea Stars###

For this tutorial I tried to identify a gene in my project taxa that is similar to a gene differentially expressed in sea stars exhibiting wasting disease.

The flow of the work is such:

```00-R-install.ipynb```: here I install R and some R packages (first with conda, then manually) needed for this project.

```01-get-data.ipynb```: here I download the count reads and full sea star transcriptome from the [orginial project repo](https://github.com/sr320/eimd-sswd). It also shows how and where I got the marine eukaryote metatranscriptome.

```02-R.ipynb```: here I created an R notebook to run the DESeq2. This didn't work due to issues with rpy2, and was not used in the final results.

```DESeq.R```: this is the R script that I used to run DESeq2, plot the results, and write ```Phel_DEGlist.tab```.

```03-Galaxy.ipynb```: this notebook details all the file conversions and manipulation I did in [Galaxy](https://usegalaxy.org/).

```04-blast.ipynb```: this notebook shows all my steps using blast to ultimately id genes in the metatranscriptome similar to differentially expressed gene in sea stars.

