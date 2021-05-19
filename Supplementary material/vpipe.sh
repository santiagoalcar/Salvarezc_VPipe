#!/bin/bash
#SBATCH --partition=longjobs 
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=14-00:00:00
#SBATCH --job-name=salvarezc_vpipe
#SBATCH --cpus-per-task=32
#SBATCH -o result_%N_%j.out      # File to which STDOUT will be written
#SBATCH -e result_%N_%j.err      # File to which STDERR will be written
#SBATCH --mail-type=ALL
#SBATCH --mail-user=salvarezc@eafit.edu.co



#export SBATCH_EXPORT=NONE
#export OMP_NUM_THREADS=1


## Para apolo:
##module load python/3.5.2_intel-2017_update-1
##module load python/2.7.12_intel-2017_update-1
##module load python/3.6.8_intel-2019_update-4
##module load python/2.7.16_intel-2019_update-4
module load python/3.7_miniconda-4.8.3
##module load python/3.6.5_miniconda-4.5.1
##module load perl/5.26.1_gcc-4.4.7


## Define variables
DATE=`date +%d-%m-%y_%H-%M`
env="v-pipe"
threads=$SLURM_CPUS_PER_TASK
folder=$(pwd)

source activate $env
./vpipe --use-conda -p --cores 32




