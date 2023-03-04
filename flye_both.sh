#!/bin/bash
#SBATCH --job-name=G1_lr_flye_align
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --time=24:00:00
#SBATCH --output=/shared/Project1_Resources/Group1/flye_both.out
#SBATCH --error=/shared/Project1_Resources/Group1/flye_both.err


#lr
source $HOME/.bash_profile
conda activate /shared/home/styab21/miniconda3/envs/flye_env

#input files
input_read1=/shared/Project1_Resources/Group1/20230130TM_merge/barcode01_both.fq.gz
input_read2=/shared/Project1_Resources/Group1/20230130TM_merge/barcode02_both.fq.gz
input_read3=/shared/Project1_Resources/Group1/20230130TM_merge/barcode07_both.fq.gz

mkdir -p /shared/Project1_Resources/Group1/AB_flye_res/bc1_both
flye --nano-raw $input_read1 --out-dir /shared/Project1_Resources/Group1/AB_flye_res/bc1_both

mkdir -p /shared/Project1_Resources/Group1/AB_flye_res/bc2_both
flye --nano-raw $input_read2 --out-dir /shared/Project1_Resources/Group1/AB_flye_res/bc2_both

mkdir -p /shared/Project1_Resources/Group1/AB_flye_res/bc7_both
flye --nano-raw $input_read3 --out-dir /shared/Project1_Resources/Group1/AB_flye_res/bc7_both

