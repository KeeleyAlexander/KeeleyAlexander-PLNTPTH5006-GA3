#!/bin/bash
set -euo pipefail

#MultiQC container: oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20

# Initial logging
echo "Starting script multiqc.sh"
date
# Create the output dir if needed
mkdir -p results/multiqc

# Run multiQC with its container
apptainer exec oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20 multiqc --outdir results/multiqc results/fastqc

# Final logging
echo
echo "Used multiQC version:"
apptainer exec "oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20" multiqc --version
echo
echo "Successfully finished script multiqc.sh"
date
