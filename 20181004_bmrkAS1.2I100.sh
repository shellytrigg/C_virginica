#!/bin/bash
## Job Name
#SBATCH --job-name=BismarkAlignAS1.2I100
## Allocation Definition 
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes 
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=04-15:30:00
## Memory per node
#SBATCH --mem=500G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=strigg@uw.edu
## Specify the working directory for this job
#SBATCH --workdir=/gscratch/srlab/strigg/analyses/20181004


#align with bismark
%%bash

find /gscratch/srlab/strigg/data/Cvirg/FASTQS/18-04-07/zr2096_*R1* \
| xargs basename -s _s1_R1.fastq.gz | xargs -I{} /gscratch/srlab/programs/Bismark-0.19.0/bismark \
--path_to_bowtie /gscratch/srlab/programs/bowtie2-2.3.4.1-linux-x86_64 \
--samtools_path /gscratch/srlab/programs/samtools-1.9 \
--score_min L,0,-1.2 \
-I 100 \
--non_directional \
--genome /gscratch/srlab/strigg/data/Cvirg/Bismark_genome/ \
-1 /gscratch/srlab/strigg/data/Cvirg/FASTQS/18-04-07/{}_s1_R1.fastq.gz \
-2 /gscratch/srlab/strigg/data/Cvirg/FASTQS/18-04-07/{}_s1_R2.fastq.gz \
-o /gscratch/srlab/strigg/analyses/20181004/ \


#run deduplicaiton
%%bash
/gscratch/srlab/programs/Bismark-0.19.0/deduplicate_bismark \
--bam -p \
/gscratch/srlab/strigg/analyses/20181004/*.bam \
-o /gscratch/srlab/strigg/analyses/20181004/ \
2> /gscratch/srlab/strigg/analyses/20181004/dedup.err \
--samtools_path /gscratch/srlab/programs/samtools-1.9/

#create summary report
!cat /gscratch/srlab/strigg/analyses/20181004/*PE_report.txt | \
grep 'Mapping\ efficiency\:' | \
cat - /gscratch/srlab/strigg/analyses/20181004/*.deduplication_report.txt > /gscratch/srlab/strigg/analyses/20181004/zr2096_mapping_dedup_summary.txt
#clean up summary report
!sed 's/Mapping\ efficiency\://g' /gscratch/srlab/strigg/analyses/20181004/zr2096_mapping_dedup_summary.txt | \
sed 's/Total\ number\ duplicated\ alignments\ removed\://g' | \
sed 's/ //g' | awk '{print $1}' > /gscratch/srlab/strigg/analyses/20181004/zr2096_mapping_dedup_summary_clean.txt

#sort bams
%%bash
find /gscratch/srlab/strigg/analyses/20181004/*deduplicated.bam| \
xargs basename -s _s1_R1_bismark_bt2_pe.deduplicated.bam | \
xargs -I{} samtools \
sort /gscratch/srlab/strigg/analyses/20181004/{}_s1_R1_bismark_bt2_pe.deduplicated.bam \ 
-o /gscratch/srlab/strigg/analyses/20181004/{}_dedup.sorted.bam
