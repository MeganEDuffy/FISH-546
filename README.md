## A metaproteomic profile in the Eastern Tropical Pacific Oxygen Minimum Zone ## 

![dissolved oxygen in the world oceans](https://github.com/MeganEDuffy/FISH-546/blob/master/images/dO2_world.jpg)

*Fig 1. Dissolved O<sub>2</sub> in the world's oceans, at 300 m depth*

### _This repository contains the analysis and data for my class project as part of FISH 546: Bioinformatics for Environmental Sciences (Fall 2016)._ ###

### Goals ###

1. Complete both database searching based and _de novo_ sequencing protein identifications for a series of seven depths (55 m to 2500 m) from the Eastern Tropical North Pacific (ETNP) oxygen minmum zone. Compare the quality of identifications from each method and with depth.

2. Use identified proteins and peptides to get a sense of microbial diversity compared with oxygen concentration. 

3. Compare the ability of _de  novo_ peptide sequencing and database searching to identify _E. coli_ peptide standards


### Repository Structure ###

- ```data/``` [This directory](https://github.com/MeganEDuffy/FISH-546/tree/master/data) contains all my spectral data that was run through both _de novo_ and database peptide searches. 

    - ```README\```: contains information about sample collection, and a general overview of file types.
    - ```ETNP-peaks-exports\```: _de novo_ peptides sequenced by PEAKS, in comma-separated values format. The peptide sequences were extracted into plain text format, and are found in a subdirectory, ```extracted-peptides```.
    - ```ETNP-plgs-db\```: peptides found by database searching in Waters ProteinLynx Global Server (PLGS). Exported from that program in .csv format. Peptides extracted from those files into .txt files in same directory. 
    - ```ETNP-plgs-mgf\```: "pseudo" MS/MS data exported from Waters PLGS after peak-peaking and conversion from MS</sup>e</sup> format. Used as input to Novor for _de novo_ sequencing. 
    - ```galaxy```: contains sequenced peptides in FASTA format (conversion from .txt done in [Galaxy](https://galaxyproject.org/). Also contains BLAST peptide databases generated from those FASTA files. 
    - ```novor-outputs\```: the _de novo_ sequenced peptides exported from Novor runs, in comma-separated values format. The  peptide sequences were extracted into plain text format, and are found in a subdirectory, ```novor-peptides```.
    - ```assemblies\```: contains FASTA files of assembled metagenomes used to generate our protein database used in PLGS peptide matching searching. The raw reads were assembled using [Velvet](https://www.ebi.ac.uk/~zerbino/velvet/) v1.2.10 (downloaded 2016-03-20) and annotated with [Prokka](http://www.vicbioinformatics.com/software.prokka.shtml), Prokka v1.11 (downloaded 2015-05-13). The extracted DNA was from samples collected from depths of 60 m, 100 m, 110 m, and 140 m, filtered on _in situ_ pumps onto 0.2 um polycarbonate filters. 

- ```analyses/``` [This directory](https://github.com/MeganEDuffy/FISH-546/tree/master/analyses) contains output from Unipept and BLAST analyses. Files are found in the following subdirectories: 

    - ```unipept-pep2prot\```: contains .csv files with protein identifications found by Unipept. 
    - ```unipept-pept2lca\```: contains .csv files with the identifed taxa of a metaproteomic sample, as well as .pgn files showing sunburst plots visualizing the specificity of taxa specified by the sequenced peptides. 
    - ```blastp\```: directory with .txt files showing ```blastp``` outputs from queries comapring _de novo_ and databased-identified peptides.

- ```notebooks/``` [Directory](https://github.com/MeganEDuffy/FISH-546/tree/master/notebooks) containing Jupyter notebooks detailing the work done for various steps of this project:

    - ```etnp-blastp\```: notebooks through which I ran ```blastp``` searches
    - ```etnp-data\```: generally unused notebooks detailing how I obtained some data
    - ```etnp-novor\```: where I ran Novor _de novo_ sequencing commands
    - ```etnp-peaks\```: shows how I converted and manipulated peptide sequences found by the _de novo_ software PEASKS 8.0
    - ```etnp-plgs\```: showing how database searches were run and exported from Waters ProteinLynx Global Server 3.0.2
    - ```etnp-unipept\```: where I ran all Unipept commands on spectral data

- ```scripts/``` [Directory]() scripts to manipulate files.

- ```tutorials/``` [Directory](https://github.com/MeganEDuffy/FISH-546/tree/master/tutorials) for scripts and Jupyter notebooks for course tutorials in 

    - ```blast-tutorial\```
    - ```seastar-tutorial\```: using DESeq and R
    - ```dnameth-tutorial\```: DNA methylaton using CoGe
    - ```igv-tutorial```: SNP tutorial using the [Interactive Genomics Viewer](http://software.broadinstitute.org/software/igv/)

- ```course-notes/``` [Directory](https://github.com/MeganEDuffy/FISH-546/tree/master/course-notes) for my notes from class, all .md files

>**Project Background:** Oxygen minimum zones (OMZs) naturally occur where aerobic respiration of organic matter (OM) combines with water column stabilization to form a persistent, low-oxygen layer at mid-depths. OMZs make up less than 1% by volume of the world ocean, yet account for 30-50% of the oceanic nitrogen loss as N<sub>2</sub>, driving nitrogen limitation of primary productivity over vast regions of the ocean. The size of OMZs is sensitive to climate change and variability: a 1% reduction of the ocean’s O<sub>2</sub> content is predicted to double the size of world OMZs. Critically, climate models predict an approximate 5% decrease to the ocean’s O<sub>2</sub> reservoir within this century due to warming and stratification. 

>A vigorously debated topic for decades has been the question of OM preservation enhancement in OMZs. Evidence has been gathered by some researchers to suggest that OMZs enhance OM preservation 2, while others have found OM degradation not to be significantly affected by decreased O<sub>2</sub>. This knowledge gap is critical to fill in, as increased OM preservation under expanding OMZs with could represent a negative feedback as atmospheric CO<sub>2</sub> increases and O<sub>2</sub> goes down. 

>Important aspects to addressing this unknown include gaining more insight into which members of the microbial community are degrading organic matter along redox gradients, and by what enzymatic machinery. That's where this project fits in. This work will fit into a larger project that will characterize the OM respiration and degradation proteins and their respective taxonomies, as best we can. 
