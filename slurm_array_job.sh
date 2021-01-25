#!/bin/bash

#SBATCH --job-name=jobname
#SBATCH --output=output.log

#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=100 # mb
#SBATCH --time=00:05:00
#SBATCH --mail-user=<email>@email.com

set -u # fail when using an undefined variable
set -x # echo script lines as they are executedi
set -e # abort at first error

module load Python/3.7.4-GCCcore-8.3.0
module load h5py/2.10.0-intel-2019b-Python-3.7.4
module load netcdf4-python/1.5.3-intel-2019b-Python-3.7.4

#srun python main.py
srun ./myprogram.sh ${SLURM_ARRAY_TASK_ID}

exit
