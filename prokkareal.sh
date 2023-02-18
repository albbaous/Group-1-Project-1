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


mkdir /shared/Project1_Resources/Group1/Prokka_results


prokka --outdir /shared/Project1_Resources/Group1/Prokka_results/S1_prokka_report --prefix short_s1 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/S1_Align/sr1_assembly.fasta

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results/S2_prokka_report --prefix short_s2 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/S2_Align/sr2_assembly.fasta

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results/S7_prokka_report --prefix short_s7 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/sr_assemblies/S7_Align/sr7_assembly.fasta

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results/L1_prokka_report --prefix Long_L1 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc1_both/lr1_assembly.fasta

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results/L2_prokka_report --prefix Long_L2 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc2_both/lr2_assembly.fasta

prokka --outdir /shared/Project1_Resources/Group1/Prokka_results/L7_prokka_report --prefix Long_L7 --genus Haloferax --species volcanii /shared/Project1_Resources/Group1/20230201TM_unicycler_res/lr_assemblies/bc7_both/lr7_assembly.fasta
