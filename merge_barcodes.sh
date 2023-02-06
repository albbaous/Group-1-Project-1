
#!/bin/bash
#SBATCH --job-name=Group1_shortreads_exe
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=1g
#SBATCH --time=05:00:00
#SBATCH --output=/shared/Project1_Resources/Group1
#SBATCH --error=/shared/Project1_Resources/Group1
 

# These steps are required to activate Conda
source $HOME/.bash_profile
conda activate /shared/apps/conda/bio2

# Run bwa
# bwa mem /shared/Materials/pseudohap_cochlearia_135M_3kb.fasta /shared/Materials/LAB_300_all_28Aug2018_R1.fq.gz /shared/Materials/LAB_300_all_28Aug2018_R2.fq.gz > ~/LAB_200_exc.sam

mkdir 20230130TM_merge
 
cat /shared/Project1_Resources/source_data/ds989matt/ds989/DS989_1_M1/20211124_1546_X3_FAQ09231_45399ec3/fastq_pass/barcode01/FAQ* >> /shared/Project1_Resources/Group1/20230130TM_merge/barcode01_pass.fq.gz
cat /shared/Project1_Resources/source_data/ds989matt/ds989/DS989_1_M1/20211124_1546_X3_FAQ09231_45399ec3/fastq_pass/barcode02/FAQ* >> /shared/Project1_Resources/Group1/20230130TM_merge/barcode02_pass.fq.gz
cat /shared/Project1_Resources/source_data/ds989matt/ds989/DS989_1_M1/20211124_1546_X3_FAQ09231_45399ec3/fastq_pass/barcode07/FAQ* >> /shared/Project1_Resources/Group1/20230130TM_merge/barcode07_pass.fq.gz
 
cat /shared/Project1_Resources/source_data/ds989matt/ds989/DS989_1_M1/20211124_1546_X3_FAQ09231_45399ec3/fastq_fail/barcode01/FAQ* >> /shared/Project1_Resources/Group1/20230130TM_merge/barcode01_fail.fq.gz
cat /shared/Project1_Resources/source_data/ds989matt/ds989/DS989_1_M1/20211124_1546_X3_FAQ09231_45399ec3/fastq_fail/barcode02/FAQ* >> /shared/Project1_Resources/Group1/20230130TM_merge/barcode02_fail.fq.gz
cat /shared/Project1_Resources/source_data/ds989matt/ds989/DS989_1_M1/20211124_1546_X3_FAQ09231_45399ec3/fastq_fail/barcode07/FAQ* >> /shared/Project1_Resources/Group1/20230130TM_merge/barcode07_fail.fq.gz
