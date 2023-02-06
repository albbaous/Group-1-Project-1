#!/bin/bash
#SBATCH --job-name=Group1_sr_Unicycler
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/sr_out.out
#SBATCH --error=/shared/Project1_Resources/Group1/sr_err.err

source $HOME/.bash_profile
conda activate /shared/home/mbxtm2/miniconda3/envs/unicycler

mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/FINAL_S1_Align
unicycler -1 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S1_R1.fq.gz -2 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S1_R2.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/FINAL_S1_Align



# mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/S2_Align
# unicycler -1 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S2_R1.fq.gz -2 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S2_R2.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/S2_Align


# mkdir /shared/Project1_Resources/Group1/20230201TM_unicycler_res/S7_Align
# unicycler -1 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S7_R1.fq.gz -2 /shared/Project1_Resources/Group1/20230130TM_merge_R1_R2/merged_S7_R2.fq.gz -o /shared/Project1_Resources/Group1/20230201TM_unicycler_res/S7_Align
