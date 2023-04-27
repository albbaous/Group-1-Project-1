------> pilon.sh <------
#!/bin/bash
#SBATCH --job-name=pilon_sorted
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/pilon_S2_ref_out.out2
#SBATCH --error=/shared/Project1_Resources/Group1/pilon_S2_ref_err.err2

#Activate Conda
source $HOME/.bash_profile
conda activate /shared/home/mbxrs14/miniconda3/envs/pilon 

#sample 1 
pilon -Xmx16G --genome /shared/Project1_Resources/Group1/BWA/bc1_flye.fasta --frags /shared/Project1_Resources/Group1/BWA/sample1.bam --output /shared/Project1_Resources/Group1/BWA/polished.assembly

#sample 2 
pilon -Xmx16G --genome /shared/Project1_Resources/Group1/BWA/sample_2/S2_flye_assembly_both.fasta --frags /shared/Project1_Resources/Group1/BWA/sample_2/sample_2.bam --output /shared/Project1_Resources/Group1/BWA/sample_2/S2_polished.assembly

#sample 7 
pilon -Xmx16G --genome /shared/Project1_Resources/Group1/BWA/sample_7/S7_flye_assembly_both.fasta --frags /shared/Project1_Resources/Group1/BWA/sample_7/sample_7.bam --output /shared/Project1_Resources/Group1/BWA/sample_7/S7_polished.assembly 

