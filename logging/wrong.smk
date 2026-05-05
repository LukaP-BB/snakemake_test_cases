shell.prefix(
    """
    log=my.log
    (
    set -euo pipefail
    set -x
    """
)
shell.suffix(
    """
    ) >$log 2>&1
    """
)


rule all:
    output: "all.txt"
    log:"all.log"
    shell:
        "touch {output}"