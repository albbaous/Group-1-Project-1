#!/bin/bash
#SBATCH --job-name=G1_quast_fullref
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/quast_full.out
#SBATCH --error=/shared/Project1_Resources/Group1/quast_full.err

source $HOME/.bash_profile
conda activate /shared/home/mbxtm2/miniconda3/envs/quast

mkdir /shared/Project1_Resources/Group1/quast_res/S1_full
quast /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/S1_Align/sr1_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc1_both/lr1_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1/assembly.fasta \
-r /shared/Project1_Resources/Group1/ncbi-genomes-2023-02-09/GCF_000025685.1_ASM2568v1_genomic.fna.gz -o  /shared/Project1_Resources/Group1/quast_res/S1_full

mkdir /shared/Project1_Resources/Group1/quast_res/S2_full
quast /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/S2_Align/sr2_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc2_both/lr2_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/assembly.fasta \
-r /shared/Project1_Resources/Group1/ncbi-genomes-2023-02-09/GCF_000025685.1_ASM2568v1_genomic.fna.gz -o  /shared/Project1_Resources/Group1/quast_res/S2_full

mkdir /shared/Project1_Resources/Group1/quast_res/S7_full
quast /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/S7_Align/sr7_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc7_both/lr7_assembly.fasta \
/shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/assembly.fasta \
-r /shared/Project1_Resources/Group1/ncbi-genomes-2023-02-09/GCF_000025685.1_ASM2568v1_genomic.fna.gz -o  /shared/Project1_Resources/Group1/quast_res/S7_full










