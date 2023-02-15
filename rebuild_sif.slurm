#!/bin/bash

#SBATCH -n 1 
#SBATCH -t 00:10:00 

module load singularity

singularity build --fakeroot ./ibexcluster_centos7.9.2009.modified ./singularity_entrypoint.def
