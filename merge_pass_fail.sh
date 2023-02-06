#!/bin/bash
#SBATCH --job-name=G1_merge_pass_fail
#SBATCH --partition=htc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=1g
#SBATCH --time=05:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/mergePF.out
#SBATCH --error=/shared/Project1_Resources/Group1/mergePF.err
 


source $HOME/.bash_profile
conda activate /shared/apps/conda/bio2

# Run bwa
# bwa mem /shared/Materials/pseudohap_cochlearia_135M_3kb.fasta /shared/Materials/LAB_300_all_28Aug2018_R1.fq.gz /shared/Materials/LAB_300_all_28Aug2018_R2.fq.gz > ~/LAB_200_exc.sam

# mkdir 20230130TM_merge
 
cat /shared/Project1_Resources/Group1/20230130TM_merge/barcode01* >> /shared/Project1_Resources/Group1/20230130TM_merge/barcode01_both.fq.gz
cat /shared/Project1_Resources/Group1/20230130TM_merge/barcode02* >> /shared/Project1_Resources/Group1/20230130TM_merge/barcode02_both.fq.gz
cat /shared/Project1_Resources/Group1/20230130TM_merge/barcode07* >> /shared/Project1_Resources/Group1/20230130TM_merge/barcode07_both.fq.gz

