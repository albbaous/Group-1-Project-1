------> bwa.sh <------
#!/bin/bash
#SBATCH --job-name=bwa
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/bwa_out.out2
#SBATCH --error=/shared/Project1_Resources/Group1/bwa_err.err2

#Activate Conda
source $HOME/.bash_profile
conda activate /shared/home/mbxrs14/miniconda3/envs/bwa 

#align sample 1 
bwa-mem2 index /shared/Project1_Resources/Group1/BWA/bc1_flye.fasta
bwa-mem2 mem /shared/Project1_Resources/Group1/BWA/bc1_flye.fasta /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S1_R1.fq.gz /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S1_R2.fq.gz > /shared/Project1_Resources/Group1/BWA/sample1.sam
samtools view -bS /shared/Project1_Resources/Group1/BWA/sample1.sam | samtools sort -o /shared/Project1_Resources/Group1/BWA/sample1.bam 
samtools index /shared/Project1_Resources/Group1/BWA/sample1.bam 

#align sample 2 
bwa-mem2 index /shared/Project1_Resources/Group1/BWA/sample_2/S2_flye_assembly_both.fasta 
bwa-mem2 mem /shared/Project1_Resources/Group1/BWA/sample_2/S2_flye_assembly_both.fasta /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S2_R1.fq.gz /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S2_R2.fq.gz > /shared/Project1_Resources/Group1/BWA/sample_2/sample_2.sam
samtools view -bS /shared/Project1_Resources/Group1/BWA/sample_2/sample_2.sam | samtools sort -o /shared/Project1_Resources/Group1/BWA/sample_2/sample_2.bam 
samtools index /shared/Project1_Resources/Group1/BWA/sample_2/sample_2.bam


#align sample 7 

bwa-mem2 index /shared/Project1_Resources/Group1/BWA/sample_7/S7_flye_assembly_both.fasta
bwa-mem2 mem /shared/Project1_Resources/Group1/BWA/sample_7/S7_flye_assembly_both.fasta /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S7_R1.fq.gz /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S7_R2.fq.gz > /shared/Project1_Resources/Group1/BWA/sample_7/sample_7.sam
samtools view -bS /shared/Project1_Resources/Group1/BWA/sample_7/sample_7.sam | samtools sort -o /shared/Project1_Resources/Group1/BWA/sample_7/sample_7.bam 
samtools index /shared/Project1_Resources/Group1/BWA/sample_7/sample_7.bam 
