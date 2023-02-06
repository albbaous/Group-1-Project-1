#!/bin/bash
#SBATCH --job-name=Group1_QC_BC_exe
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=1g
#SBATCH --time=05:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/%out.out
#SBATCH --error=/shared/Project1_Resources/Group1/%err.err

source $HOME/.bash_profile
conda activate /shared/home/mbxtm2/miniconda3/envs/newpy1


mkdir 20230131TM_nanoplot_res/bc1_pass_QC
NanoPlot --fastq /shared/Project1_Resources/Group1/20230130TM_merge/barcode01_pass.fq.gz --outdir /shared/Project1_Resources/Group1/20230131TM_nanoplot_res/bc1_pass_QC


mkdir 20230131TM_nanoplot_res/bc1_fail_QC
NanoPlot --fastq /shared/Project1_Resources/Group1/20230130TM_merge/barcode01_fail.fq.gz --outdir /shared/Project1_Resources/Group1/20230131TM_nanoplot_res/bc1_fail_QC

 
mkdir 20230131TM_nanoplot_res/bc2_pass_QC
NanoPlot --fastq /shared/Project1_Resources/Group1/20230130TM_merge/barcode02_pass.fq.gz --outdir /shared/Project1_Resources/Group1/20230131TM_nanoplot_res/bc2_pass_QC


mkdir 20230131TM_nanoplot_res/bc2_fail_QC
NanoPlot --fastq /shared/Project1_Resources/Group1/20230130TM_merge/barcode02_fail.fq.gz --outdir /shared/Project1_Resources/Group1/20230131TM_nanoplot_res/bc2_fail_QC


mkdir 20230131TM_nanoplot_res/bc7_pass_QC
NanoPlot --fastq /shared/Project1_Resources/Group1/20230130TM_merge/barcode07_pass.fq.gz --outdir /shared/Project1_Resources/Group1/20230131TM_nanoplot_res/bc7_pass_QC

mkdir 20230131TM_nanoplot_res/bc7_fail_QC
NanoPlot --fastq /shared/Project1_Resources/Group1/20230130TM_merge/barcode07_fail.fq.gz --outdir /shared/Project1_Resources/Group1/20230131TM_nanoplot_res/bc7_fail_QC




