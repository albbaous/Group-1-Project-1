#!/bin/bash
#SBATCH --job-name=G1_hyb_new
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=96:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/hybrid2_new_out.out
#SBATCH --error=/shared/Project1_Resources/Group1/hybrid2_new_err.err

source $HOME/.bash_profile
conda activate /shared/home/mbxtm2/miniconda3/envs/unicycler_new1

# mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1
# unicycler --kmers 25,55,71 -t 8 -1 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S1_R1.fq.gz -2 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S1_R2.fq.gz \
# /shared/Project1_Resources/Group1/20230130TM_merge/barcode01_pass.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1
 
mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1
unicycler --kmers 25,55,71 -t 8 -1 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S2_R1.fq.gz -2 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S2_R2.fq.gz \
-l /shared/Project1_Resources/Group1/20230130TM_merge/barcode02_pass.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1

mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1
unicycler --kmers 25,55,71 -t 8 -1 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S7_R1.fq.gz -2 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S7_R2.fq.gz \
-l /shared/Project1_Resources/Group1/20230130TM_merge/barcode07_pass.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1





