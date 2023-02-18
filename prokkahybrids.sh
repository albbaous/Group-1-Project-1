#!/bin/bash
#SBATCH --job-name=G1_Prokka_ref
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/prokka_ref_out.out2
#SBATCH --error=/shared/Project1_Resources/Group1/prokka_ref_err.err2

#Activate Conda
source $HOME/.bash_profile
conda activate /shared/home/mbxrs14/miniconda3/envs/prokka

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results/H1_prokka_report --prefix hybrid_s1 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1/assembly.fasta

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results/H2_prokka_report --prefix hybrid_s2 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/assembly.fasta

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results/H7_prokka_report --prefix hybrid_s7 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/assembly.fasta 
