------> blast_take2.sh <------
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

makeblastdb -in /shared/Project1_Resources/Group1/genome_assemblies_genome_fasta/ncbi-genomes-2023-02-08/GCF_000025685.1_ASM2568v1_genomic.fna -dbtype nucl -out ref_genome_db

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1/hyb1_assembly.fasta -db ref_genome_db -out /shared/Project1_Resources/Group1/blast_results2/H1vref.txt -outfmt 6 

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/hyb2_assembly.fasta -db ref_genome_db -out /shared/Project1_Resources/Group1/blast_results2/H2vref.txt -outfmt 6

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/hyb7_assembly.fasta -db ref_genome_db -out /shared/Project1_Resources/Group1/blast_results2/H7vref.txt -outfmt 6

#H1 as reference 

makeblastdb -in /shared/Project1_Resources/Group1/20230201TM_unicycler_res/001_hybrid_new1/hyb1_assembly.fasta -dbtype nucl -out Hybrid1_ref

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/hyb2_assembly.fasta -db Hybrid1_ref -out /shared/Project1_Resources/Group1/blast_results2/H1vH2.txt -outfmt 6

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/hyb7_assembly.fasta -db Hybrid1_ref -out /shared/Project1_Resources/Group1/blast_results2/H1vH7.txt -outfmt 6

#H2 as reference 

makeblastdb -in /shared/Project1_Resources/Group1/20230201TM_unicycler_res/002_hybrid_new1/hyb2_assembly.fasta -dbtype nucl -out Hybrid2_ref

blastn -query /shared/Project1_Resources/Group1/20230201TM_unicycler_res/007_hybrid_new1/hyb7_assembly.fasta -db Hybrid2_ref -out /shared/Project1_Resources/Group1/blast_results2/H2vH7.txt -outfmt 6
