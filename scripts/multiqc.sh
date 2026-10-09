#!/bin/bash
set -euo pipefail

#MultiQC container:
CONTAINER=oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20

# Copy the placeholder variables
outdir="$1"
input="$2"

# Initial logging
echo "Starting script multiqc.sh"
date
# Create the output dir if needed
mkdir -p results/multiqc

# Run multiQC with its container
apptainer exec "$CONTAINER" multiqc --outdir "$outdir" "$input"

# Final logging
echo
echo "Used multiQC version:"
apptainer exec "oras://community.wave.seqera.io/library/multiqc:1.35--562c547b518ebe20" multiqc --version
echo
echo "Successfully finished script multiqc.sh"
date
