# slurm executor plugin bug in some edge cases
When the current working directory is different from the workflow working directory and `slurm-log-dir` is set to a relative path, job submission will silently fail and no log is created.

To avoid this issue, the command launching snakemake must be in the workflow's working directory (see `launch_success.sh`)

To test the fail case, see `launch_fail.sh`