#!/bin/bash
module load containers/singularity/3.9.5                                    # donne accès à singularity exec pour tous les subshell
source /labos/UGM/dev/envs/miniconda/etc/profile.d/conda.sh                 # pour que les subshell aient accès au conda activate           
conda activate /labos/UGM/dev/envs/shared/smk_dev

set -x
rm -r .snakemake workdir
snakemake -c 1 --forceall $@
