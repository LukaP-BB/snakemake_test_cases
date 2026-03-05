set -euo pipefail
set -x

wd="$(realpath $(dirname $0))/workdir"

snakemake --config "workdir=$wd" --executor slurm --slurm-logdir log/slurm --jobs 1
