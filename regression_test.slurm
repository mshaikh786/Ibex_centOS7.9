#!/bin/bash

#SBATCH -n 1 
#SBATCH -t 00:10:00

module load singularity
singularity run -B /sw ibexcluster_centos7.9.2009.modified ./wrapper.sh
