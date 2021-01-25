#!/bin/bash -l

#PBS -S /usr/bin/bash
#PBS -N jobname
#PBS -l nodes=1:ppn=1
#PBS -l walltime=00:05:00
#PBS -M email@emai.com
#PBS -l mem=20GB
#PBS -m bea
#
cd $PBS_O_WORKDIR

set -u # fail when using an undefined variable
set -x # echo script lines as they are executedi
set -e # abort at first error

module load Python/3.7.4-GCCcore-8.3.0
module load h5py/2.10.0-intel-2019b-Python-3.7.4
module load netcdf4-python/1.5.3-intel-2019b-Python-3.7.4

./myprogram.sh

exit
