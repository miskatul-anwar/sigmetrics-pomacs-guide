# Artifact README (Anonymized)

## 1. Contents
- Code layout
- Data (included samples; how to obtain full datasets with anonymized links)
- Scripts to reproduce each figure/table
- Environment (Docker/Conda), OS, versions

## 2. Quick start (≤30 minutes)
```bash
# Docker
docker build -t artifact .
docker run --rm -it -v "$PWD:/work" artifact bash -lc "./scripts/run_smoketest.sh"

# Conda
conda env create -f environment.yml
conda activate artifact
./scripts/run_smoketest.sh
```
Expected outputs:
- `results/smoke/figure1.png`
- `results/smoke/run.log` (env + seeds)

## 3. Full reproduction
- Dataset acquisition + checksums
- Commands per figure/table
- Runtime and resource estimates
- Seeds and repetitions; nondeterminism notes

## 4. System requirements
- Hardware (CPU/GPU, RAM, disk)
- Software versions
- External dependencies and licenses

## 5. Validation
- Output verification (hashes, thresholds)
- Tolerances for stochastic results

## 6. Troubleshooting
- Common issues and fixes
- Contact (to be filled post-acceptance)