#!/bin/bash

# See `man sbatch` or https://slurm.schedmd.com/sbatch.html for descriptions of sbatch options.
#SBATCH --job-name=gene-cont-easyhard-chkpt10K # A nice readable name of your job, to see it in the queue
#SBATCH --nodes=1 # Number of nodes to request
#SBATCH --cpus-per-task=4 # Number of CPUs to request
#SBATCH --gres=gpu:v100m32:2

source /opt/conda/etc/profile.d/conda.sh
# Activate your environment, you have to create it first
conda activate dnabert2
# Your job script goes below this line

python -V

cd /home/[user-id]/gene-pretraining/DNABERT_2/finetune
pwd

sh scripts/run_dnabert1_modelsgpu2_outputdir.sh /home/<server-own-user-id>/gene-pretraining/DNABERT_2/sample_data /home/<server-own-user-id>/gene-pretraining/DNABERT/examples/models/save-easy-to-hard-fixed/dnabert/10K/ /home/[user-id]/gene-pretraining/DNABERT_2/finetune/output/easytohard_fixed_dnabert10K/
