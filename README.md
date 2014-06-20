molgenis-c5-RnaGemini
=====================


A pipeline for reference based RNA-seq written in [molgenis compute 5](http://www.molgenis.org/wiki/ComputeStart) , also see their pipeline explaination at https://github.com/molgenis/molgenis-pipelines. For local use. Written in bash. Released to be a guide for rna analysis or a solution when you are able to apply the pipeline.

Gemini:For The two-pass usage of rna-STAR

Applied Programmes
------------------

references will follow:

+ Fastqc
+ rna-STAR
+ picard-tools
+ htseq-count
+ (markup/pandoc)
+ (gatk...)


Does it work?
-------------

With the right resources every step you see here works. The resources can also be downloaded from the GATK(.fa/fai/.dict) bundle/Ensembl(.gtf) and some need to be converted from the .gtf format: .rrna.interval_list/.refflat

How do i set it up?
-------------------

This is on of the hard parts, good luck.

+ setup molgenis and all the tools and resources.
+ Get the current release from the releases page.
+ For your samples modify the samplesheet and run the [ generate script ](https://github.com/mmterpstra/molgenis-c5-RnaGemini/GenerateScripts.sh) and then the submit.sh script.


Goals
-----

Things i want to include:

+ fluxcapacitor expression
+ final rapport in markdown
+ gatk variantcalling
+ fusion detection?
+ setup of tmp files for automatic cleanup
