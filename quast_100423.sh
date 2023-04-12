#!/bin/bash
#SBATCH --job-name=quast_final
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/quast_final_out.out
#SBATCH --error=/shared/Project1_Resources/Group1/quast_final_err.err

source $HOME/.bash_profile
conda activate /shared/home/mbxtm2/miniconda3/envs/quast


mkdir /shared/Project1_Resources/Group1/quast_res/S1_FINAL
quast /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/S1_Align/sr1_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc1_both/lr1_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1/hyb1_assembly.fasta \
-r /shared/Project1_Resources/Group1/ncbi-genomes-2023-02-09/GCF_000025685.1_ASM2568v1_genomic.fna.gz -o  /shared/Project1_Reso$

mkdir /shared/Project1_Resources/Group1/quast_res/S2_FINAL
quast /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/S2_Align/sr2_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc2_both/lr2_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/hyb2_assembly.fasta \
-r /shared/Project1_Resources/Group1/ncbi-genomes-2023-02-09/GCF_000025685.1_ASM2568v1_genomic.fna.gz -o  /shared/Project1_Reso$

mkdir /shared/Project1_Resources/Group1/quast_res/S7_FINAL
quast /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/S7_Align/sr7_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/bc7_both_final/lr7_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/hyb7_assembly.fasta \
-r /shared/Project1_Resources/Group1/ncbi-genomes-2023-02-09/GCF_000025685.1_ASM2568v1_genomic.fna.gz -o  /shared/Project1_Reso$
