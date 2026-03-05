set -euo pipefail
set -x

wd="$(realpath $(dirname $0))/workdir"
mkdir workdir -p && cd workdir

snakemake --config "workdir=$wd" -s ../Snakefile --executor slurm --slurm-logdir log/slurm --jobs 1
