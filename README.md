molgenis-c5-RnaGemini
=====================


A pipeline for reference based RNA-seq written in [molgenis compute 5](http://www.molgenis.org/wiki/ComputeStart) , also see their pipeline explaination at https://github.com/molgenis/molgenis-pipelines. For local use. Written in bash. Released to be a guide for rna analysis or a solution when you are able to apply the pipeline.

Gemini:For The two-pass usage of rna-STAR

Applied Programmes
------------------

references will follow:

| Name         | project website                                                                            | Article          |
| ------------ | ------------------------------------------------------------------------------------------ | ---------------- |
| Fastqc       | [bioinformatics.babraham.ac.uk](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/) | |
| rna-STAR     | [code.google](http://code.google.com/p/rna-star/)                                          | [pubmed abstract](http://www.ncbi.nlm.nih.gov/pubmed/23104886) |
| picard-tools | [picard.sourceforge](http://picard.sourceforge.net/) | |
| htseq-count  | [embl.de](www-huber.embl.de/users/anders/HTSeq/doc/index.html)                            |  [preprint](http://biorxiv.org/content/early/2014/02/20/002824) |

to be used:

+ (markup/pandoc)
+ (Genome Analysis Toolkit (abbr: GATK)...)
+ Fluxcapacitor

Resource links
--------------

The resource links for installing references/preparing them

| name          | site 
| ------------- | ---- 
| GATK Bundle   | [ human reference ](http://gatkforums.broadinstitute.org/discussion/1213/what-s-in-the-resource-bundle-and-how-can-i-get-it)
| Ensembl       | [reference/gtf dowload](http://www.ensembl.org/info/data/ftp/index.html)
| UCSC Tools    | [ format conversion/additional tools ](http://hgdownload.soe.ucsc.edu/admin/exe/)

Does it work?
-------------

With the right tools/resources every step you see here works. The resources can also be downloaded from the GATK bundle(.fa/fai/.dict)/Ensembl(.gtf) and some need to be converted from the .gtf format: .rrna.interval_list/.refflat

How do i set it up?
-------------------

This is one of the hard parts, good luck.

+ setup molgenis and all the tools and resources.
+ Get the current release from the releases page.
+ For your samples modify the samplesheet and run the [ generate script ](https://github.com/mmterpstra/molgenis-c5-RnaGemini/GenerateScripts.sh) and then the submit.sh script.


I've got the results of the pipeline, what can do with them?
------------------------------------------------------------

You can ...

+ write a publication
+ view your data in IGV
+ do a post analysis in R for differential expression

~~in the future you can ...~~


Goals
-----

Things i want to include:

+ fluxcapacitor expression
+ final rapport in markdown
+ gatk variantcalling
+ fusion detection?
+ setup of tmp files for automatic cleanup
