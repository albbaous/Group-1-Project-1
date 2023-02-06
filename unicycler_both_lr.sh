#!/bin/bash
#SBATCH --job-name=G1_lr_both
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=24:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/unicycler_lr_both.out
#SBATCH --error=/shared/Project1_Resources/Group1/unicyler_lr_both.err

source $HOME/.bash_profile
conda activate /shared/home/mbxtm2/miniconda3/envs/unicycler

mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc1_both
unicycler -l /shared/Project1_Resources/Group1/20230130TM_merge/barcode01_both.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc1_both

mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc2_both
unicycler -l /shared/Project1_Resources/Group1/20230130TM_merge/barcode02_both.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc2_both

mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc7_both
unicycler -l /shared/Project1_Resources/Group1/20230130TM_merge/barcode07_pass.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc7_both



