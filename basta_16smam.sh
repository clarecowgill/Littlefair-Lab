#!/bin/bash -l

# Request 12? cores
#$ -pe smp 12

# Request 12H of wallclock time
#$ -l h_rt=2:0:0

# Request 2Gb of RAM
#$ -l mem=1G

#
#$ -m e

#$ -wd /home/ucbtea5/Scratch/BASTA

module load python/miniconda3/24.3.0-0

source $UCL_CONDA_PATH/etc/profile.d/conda.sh

conda activate basta_py3

basta sequence -i 98 -l 70 -p 70 /home/ucbtea5/Scratch/Swiss_Apr26/16Smam/blast_results/16Smam_combined_results.txt ./basta/16Smam_bastai98l70p70_out.txt -v ./basta/16Smam_bastai98l70p70_vout.txt -c ./config.txt gb