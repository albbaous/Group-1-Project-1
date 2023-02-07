#!/bin/bash
#SBATCH --job-name=G1_lr_align
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=24:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/unicycler_lr.out
#SBATCH --error=/shared/Project1_Resources/Group1/unicyler_lr.err

source $HOME/.bash_profile
conda activate /shared/home/mbxtm2/miniconda3/envs/unicycler

mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc1_pass
unicycler -l /shared/Project1_Resources/Group1/20230130TM_merge/barcode01_pass.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc1_pass

mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc2_pass
unicycler -l /shared/Project1_Resources/Group1/20230130TM_merge/barcode02_pass.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc2_pass

mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc7_pass
unicycler -l /shared/Project1_Resources/Group1/20230130TM_merge/barcode07_pass.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc7_pass



