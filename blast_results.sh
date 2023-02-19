#!/bin/bash
#SBATCH --job-name=G1_Prokka_ref
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/Blast_res_out.out2
#SBATCH --error=/shared/Project1_Resources/Group1/Blast_res_err.err2

#Activate Conda
source $HOME/.bash_profile
conda activate /shared/home/mbxrs14/miniconda3/envs/blast_env

mkdir /shared/Project1_Resources/Group1/blast_results

#Compare to reference 

makeblastdb -in /shared/Project1_Resources/Group1/genome_assemblies_genome_fasta/ncbi-genomes-2023-02-08/GCF_000025685.1_ASM2568v1_genomic.fna -dbtype nucl -out ref_genome_db

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1/assembly.fasta -db ref_genome_db -out /shared/Project1_Resources/Group1/blast_results/H1vref.txt -outfmt 6 

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/assembly.fasta -db ref_genome_db -out /shared/Project1_Resources/Group1/blast_results/H2vref.txt -outfmt 6

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/assembly.fasta -db ref_genome_db -out /shared/Project1_Resources/Group1/blast_results/H7vref.txt -outfmt 6

#H1 as reference 

makeblastdb -in /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1/assembly.fasta -dbtype nucl -out Hybrid1_ref

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/assembly.fasta -db Hybrid1_ref -out /shared/Project1_Resources/Group1/blast_results/H1vH2.txt -outfmt 6

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/assembly.fasta -db Hybrid1_ref -out /shared/Project1_Resources/Group1/blast_results/H1vH7.txt -outfmt 6

#H2 as reference 

makeblastdb -in /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/assembly.fasta -dbtype nucl -out Hybrid2_ref

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/assembly.fasta -db Hybrid2_ref -out /shared/Project1_Resources/Group1/blast_results/H2vH7.txt -outfmt 6

#Long reads 

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc1_both/assembly.fasta -db ref_genome_db -out /shared/Project1_Resources/Group1/blast_results/L1vref.txt -outfmt 6 

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc2_both/assembly.fasta -db ref_genome_db -out /shared/Project1_Resources/Group1/blast_results/L2vref.txt -outfmt 6 
 
blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc7_both/assembly.fasta -db ref_genome_db -out /shared/Project1_Resources/Group1/blast_results/L7vref.txt -outfmt 6 

#L1 as ref 

makeblastdb -in /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc1_both/assembly.fasta -dbtype nucl -out L1_ref

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc2_both/assembly.fasta -db L1_ref -out /shared/Project1_Resources/Group1/blast_results/L1vL2.txt -outfmt 6

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc7_both/assembly.fasta -db L1_ref -out /shared/Project1_Resources/Group1/blast_results/L1vL7.txt -outfmt 6

#L2 as ref 

makeblastdb -in /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc2_both/assembly.fasta -dbtype nucl -out L2_ref

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc7_both/assembly.fasta -db L2_ref -out /shared/Project1_Resources/Group1/blast_results/L2vL7.txt -outfmt 6


