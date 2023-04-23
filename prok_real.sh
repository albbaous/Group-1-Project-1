#!/bin/bash
#SBATCH --job-name=G1_Prokka
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/prok1n2_real.out
#SBATCH --error=/shared/Project1_Resources/Group1/prok1n2_real.err

#Activate Conda
source $HOME/.bash_profile
conda activate /shared/Project1_Resources/Group2/shared_envs/prokka

mkdir /shared/Project1_Resources/Group1/Prokka_results2

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results2/H1_prokka_report --prefix hybrid_s1 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1/hyb1_assembly.fasta

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results2/H2_prokka_report --prefix hybrid_s2 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/hyb2_assembly.fasta

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results2/H7_prokka_report --prefix hybrid_s7 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/hyb7_assembly.fasta





