### A metaproteomic profile in the Eastern Tropical Pacific Oxygen Minimum Zone ###

![dissolved oxygen in the world oceans](https://github.com/MeganEDuffy/FISH-546/blob/master/images/dO2_world.jpg)

_This repository contains the analysis and data for my class project as part of FISH 546: Bioinformatics for Environmental Sciences (Fall 2016)._

### Goals ###

1. Complete both database searching based and de novo sequencing protein identifications for a series of six depths from the Eastern Tropical North Pacific Oxygen (ETNP). Compare the quality of identifications from each method and with depth.

2. Use identified proteins and peptides to get a sense of microbial function compared with oxygen concentration. 

### Projected Timeline ###

_Week 4_: 

- Use PLGS to search for protein identifications with the assembled ETNP metagenome database I made this week.

- Download msconvert, develop notebook to convert filetypes: output from PLGS to .mgf

- Figure out the best computational location for this work. Set up SSH for our lab computer? Try using owl?

- Become more familiar with the bioinformatics of proteomics. Search around publications and GitHub for quality availible tools that I can build into a pipeline going forward with my data. This week I found a helpful tutorial from [CompOmics](https://compomics.com/bioinformatics-for-proteomics/) that might shed some light on the protein identification and functional ID work that I want to get at over the course of this project.

_Week 5_:

- Use Novor to de novo sequence peptides for each sample (.mgf input).

- Input Novor outputs (csv files) into UniPept. Try and do this without GUIs.

### Repository Structure ###

- ```data/``` [This directory](https://github.com/MeganEDuffy/FISH-546/tree/master/data) has output .mgf files generated in PLGS (raw MS/MS spectral data is on a remote server). Will have more soon.

- ```analyses/``` [This directory](https://github.com/MeganEDuffy/FISH-546/tree/master/analyses) is empty as of 2016-10-21, but will contain output .csv files from novor, unipept.

- ```notebooks/``` [Directory](https://github.com/MeganEDuffy/FISH-546/tree/master/notebooks) containing Jupyter notebooks for developing scripts, running reproducible data analysis

- ```scripts/``` [Directory]() empty as of 2016-10-21, but will contain shell scripts to novor, msconvert, and unipept from the command line

- ```tutorials/``` [Directory](https://github.com/MeganEDuffy/FISH-546/tree/master/tutorials) for scripts and Jupyter notebooks for course tutorials in blast, DESeq2

- ```course-notes/``` [Directory](https://github.com/MeganEDuffy/FISH-546/tree/master/course-notes) for my notes from class, all md files

>**Project Background:** Oxygen minimum zones (OMZs) naturally occur where aerobic respiration of organic matter (OM) combines with water column stabilization to form a persistent, low-oxygen layer at mid-depths. OMZs make up less than 1% by volume of the world ocean, yet account for 30-50% of the oceanic nitrogen loss as N2, driving nitrogen limitation of primary productivity over vast regions of the ocean. The size of OMZs is sensitive to climate change and variability: a 1% reduction of the ocean’s O2 content is predicted to double the size of world OMZs. Critically, climate models predict an approximate 5% decrease to the ocean’s O2 reservoir within this century due to warming and stratification. 

>A vigorously debated topic for decades has been the question of OM preservation enhancement in OMZs. Evidence has been gathered by some researchers to suggest that OMZs enhance OM preservation 2, while others have found OM degradation not to be significantly affected by decreased O2. This knowledge gap is critical to fill in, as increased OM preservation under expanding OMZs with could represent a negative feedback as atmospheric CO2 increases and O2 goes down. 

>Important aspects to addressing this unknown include gaining more insight into which members of the microbial community are degrading organic matter along redox gradients, and by what enzymatic machinery. That's where this project fits in. This work will fit into a larger project that will characterize the OM respiration and degradation proteins and their respective taxonomies, as best we can. 
