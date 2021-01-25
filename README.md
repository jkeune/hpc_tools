# hpc_tools
Random collection of useful HPC scripts: job scripts for submission with slurm and torque, ...

### Torque
```bash
qsub torque_job.sh
qsub -v myval=3 torque_job_val.sh
```
```bash
qstat
qstat -n
qstat -u userid
```
```bash
qdel jobid
```

#### Torque: array jobs
```bash
qsub -t 1980-2016 torque_array_job.sh
```


### Slurm
```bash
sbatch slurm_job.sh
sbatch --export=myval='3' slurm_job_val.sh
```
```bash
squeue
```
```bash
scancel jobid
```

#### Slurm: array jobs
```bash
sbatch --array=1980-2016 slurm_array_job.sh
```
