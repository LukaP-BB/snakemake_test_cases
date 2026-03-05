set -euo pipefail
set -x

wd="$(realpath $(dirname $0))/workdir"

snakemake --config "workdir=$wd"
