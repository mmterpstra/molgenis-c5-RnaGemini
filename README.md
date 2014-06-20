molgenis-c5-RnaGemini
=====================


A pipeline for RNA-seq written in molgenis compute 5. For local use. Written in bash.

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

with the right resources every step you see here works

+ htseq-count (n=2)

How do i set it up?
-------------------

setup molgenis and all the tools and resources. For your samples modify the samplesheet and run the generated submit script.


Goals
-----

+ fluxcapacitor expression
+ gatk variantcalling
+ final rapport in markdown
+ setup of tmp files for automatic cleanup
