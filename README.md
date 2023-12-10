With Singularity, the image needs to be modified to enable entrypoint and activating the modulesystem when the container starts:

```
sbatch rebuild_sif.slurm
```


For running interactively, you must source the modulesystem in the container to start using the modules from mounted filesystem /sw

```
singularity shell -B /sw ibexcluster_centos7.9.2009.modified 
Singularity> source /software/entrypoint.sh
```
