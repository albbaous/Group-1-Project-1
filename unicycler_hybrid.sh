#!/bin/bash
#SBATCH --job-name=G1_hyb_Unicycler
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/hybrid_out.out
#SBATCH --error=/shared/Project1_Resources/Group1/hybride_err.err

source $HOME/.bash_profile
conda activate /shared/home/mbxtm2/miniconda3/envs/unicycler

mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_align
unicycler -1 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S1_R1.fq.gz -2 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S1_R2.fq.gz -l /shared/Project1_Resources/Group1/20230130TM_merge/barcode01_both.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_align
 


