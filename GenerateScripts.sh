#!bin/bash

tmp="tmp01"

echo "copy resources to tmp"
cp -r /gcc/groups/oncogenetics/prm02/data/mytools/molgenis-compute-core-1.0.0-SNAPSHOT/workflows/RnaAnalysis/resources /gcc/groups/oncogenetics/$tmp/
cp -r /gcc/groups/oncogenetics/prm02/data/mytools/molgenis-compute-core-1.0.0-SNAPSHOT/workflows/RnaAnalysis/tools /gcc/groups/oncogenetics/$tmp/
echo "Convert parametersheet"
perl /gcc/groups/oncogenetics/prm02/data/mytools/molgenis-compute-core-1.0.0-SNAPSHOT/workflows/RnaAnalysis/scripts/convertParametersGitToMolgenis.pl parameters.csv > parameters.molgenis.csv

echo "Generate scripts"
module load jdk/1.7.0_51

#runID=++
runDir=/gcc/groups/oncogenetics/${tmp}/projects/resourcesRNASeq/Workflow/runs/testlong
rm $runDir.*d

bash /gcc/groups/oncogenetics/prm02/data/mytools/molgenis-compute-core-1.0.0-SNAPSHOT/molgenis_compute.sh \
 --generate \
 -p /gcc/groups/oncogenetics/prm02/data/mytools/molgenis-compute-core-1.0.0-SNAPSHOT/workflows/RnaAnalysis/parameters.molgenis.csv \
 -p /gcc/groups/oncogenetics/prm02/data/mytools/molgenis-compute-core-1.0.0-SNAPSHOT/workflows/RnaAnalysis/SamplesheetTestLong.csv \
 -w /gcc/groups/oncogenetics/prm02/data/mytools/molgenis-compute-core-1.0.0-SNAPSHOT/workflows/RnaAnalysis/workflow.csv \
 --backend pbs \
 --weave \
 -rundir $runDir \
 -runid 02 \
 -header /gcc/groups/oncogenetics/prm02/data/mytools/molgenis-compute-core-1.0.0-SNAPSHOT/templates/pbs/header.ftl \
 -submit /gcc/groups/oncogenetics/prm02/data/mytools/molgenis-compute-core-1.0.0-SNAPSHOT/templates/pbs/submit.ftl \
 -footer /gcc/groups/oncogenetics/prm02/data/mytools/molgenis-compute-core-1.0.0-SNAPSHOT/templates/pbs/footer.ftl 
