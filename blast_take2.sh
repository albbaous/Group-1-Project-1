#!/bin/bash
#SBATCH --job-name=Blast_g1
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/blst.out
#SBATCH --error=/shared/Project1_Resources/Group1/blst.err

#Activate Conda
source $HOME/.bash_profile
conda activate /shared/Project1_Resources/Group2/shared_envs/blast

mkdir /shared/Project1_Resources/Group1/blast_results2

#Compare to reference

makeblastdb -in /shared/Project1_Resources/Group1/genome_assemblies_genome_fasta/ncbi-genomes-2023-02-08/GCF_000025685.1_ASM256$

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1/hyb1_assembly.fasta -db ref_genome_db $

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/hyb2_assembly.fasta -db ref_genome_db $

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/hyb7_assembly.fasta -db ref_genome_db $

#H1 as reference

makeblastdb -in /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1/hyb1_assembly.fasta -dbtype nucl -ou$

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/hyb2_assembly.fasta -db Hybrid1_ref -o$

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/hyb7_assembly.fasta -db Hybrid1_ref -o$

#H2 as reference

makeblastdb -in /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/hyb2_assembly.fasta -dbtype nucl -ou$

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/hyb7_assembly.fasta -db Hybrid2_ref -o$




