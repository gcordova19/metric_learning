#!/bin/bash
#SBATCH -n 4 # Number of cores
#SBATCH -N 1 # Ensure that all cores are on one machine
#SBATCH -D /home/grupo09/M5/exercise_deep_metric_learning/code/estudiants/ # working directory
#SBATCH -t 1-00:00 # Runtime in D-HH:MM
#SBATCH -p mlow # Partition to submit to
#SBATCH -q masterlow # Required to requeue other users mlow queue jobs
                      # With this parameter only 1 job will be running in queue mhigh
                      # By defaulf the value is masterlow if not defined
#SBATCH --mem 32384 # 4GB solicitados.
#SBATCH --gres gpu:Pascal:1 # 
#SBATCH -o %x_%u_%j.out # File to which STDOUT will be written
#SBATCH -e %x_%u_%j.err # File to which STDERR will be written


python3 main_one_tower.py --exp_name main_on_tower_Tsinghua_${SLURM_JOB_ID} --exp_folder Main_One_Tower_Tsinghua 
