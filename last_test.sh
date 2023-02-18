#!/bin/bash
#SBATCH --job-name=last_test
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=96:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/Output_Files/last_test.out
#SBATCH --error=/shared/Project1_Resources/Group1/Error_Files/last_test.err

source $HOME/.bash_profile
conda activate /shared/home/mbxtm2/miniconda3/envs/last

 
mkdir /shared/Project1_Resources/Group1/last_tom
lastdb TEST /shared/Project1_Resources/Group1/Prokka_results/H1_prokka_report/hybrid_s1.fna
lastal TEST /shared/Project1_Resources/Group1/Prokka_results/H2_prokka_report/hybrid_s2.fna > /shared/Project1_Resources/Group1/last_tom/myalns.maf 



