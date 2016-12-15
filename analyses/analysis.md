## Conclusions ##

There's a lot still I want to do with the outcomes of this foray into _de novo_ peptide sequencing, but here are a few things I take away:

**1. We find fewer peptides with depth, by most approaches to sequencing.** Most of the peptides identifed via database searching were in the 100 m sample, and none were found in the 2500 m sample. This isn't terribly surprising, given we had no assembled metagenome from close to that depth. 

![total peptides found](https://raw.githubusercontent.com/MeganEDuffy/FISH-546/master/analyses/found-peptides-plot.png)

![all peptide table](https://raw.githubusercontent.com/MeganEDuffy/FISH-546/master/analyses/all-peptide-table.png)

While we mostly only identified _Procholococcus_ proteins via database searching, using Novor and PEAKS _de novo_ searches we found not only cyanobacterial peptides, but those idenifying other microbes, diatoms, and virus. 
For example, here is the least common ancestor plot peptides sequenced _de novo_ by PEAKS for the 55 m depth sample:

![55 m peaks](https://raw.githubusercontent.com/MeganEDuffy/FISH-546/master/analyses/unipept-pept2lca/peaks/2016-12-07-ETNP_131_55m_ptm_peptides_lca.png)

Zooming into this diagram further, we find that PEAKS found 4 peptides that Unipept matched to UniProtKB viral proteins. Here are the "taxa" of those viral groups:

![viruse](https://raw.githubusercontent.com/MeganEDuffy/FISH-546/master/analyses/unipept-pept2lca/peaks/55m_viruses.png)

This is exciting, as 1) these are viruses we would expect to find in marine samples ([Cassman et al., 2012](https://www.ncbi.nlm.nih.gov/pubmed/23039259)) (although little is known about where they are and who they infect).
 and 2) we didn't find these peptides through database searching with PLGS. We only identified a histone and a hypothetical protein with that search:
 
 ![plgs search results](https://raw.githubusercontent.com/MeganEDuffy/FISH-546/master/analyses/unipept-pept2lca/peaks/55m-plgs.png)
 
 An next step is to use _de novo_ peptides to improve our databases. If we pipe _de novo_ sequences into database searching, will we still identify those peptides?
