# EasyInstall

This is a awesome list of easy installation instructions for tricky dependencies.

## Falsh Attention

Why it's tricky: it needs GPU (a compute node) during installation.


```bash
#!/bin/bash
#SBATCH --job-name=flash-attn-build
#SBATCH --account=PAS2836
#SBATCH --partition=debug-nextgen
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-node=1
#SBATCH --mem=64G
#SBATCH --time=01:00:00
#SBATCH --output=flash-attn-build.out
#SBATCH --error=flash-attn-build.err
export MAX_JOBS=4
export NVCC_THREADS=2
export TORCH_CUDA_ARCH_LIST="9.0"
module load miniconda3/24.1.2-py310
conda deactivate
conda activate DRIP_flash
python -m pip install -v flash-attn --no-build-isolation
conda deactivate
```

## Mamba


Why it's tricky: it requires git clone and installing causal-conv1d before the actual mamba.


```bash
cd ~/tmp
rm -rf causal-conv1d mamba

# install causal-conv1d first
git clone https://github.com/Dao-AILab/causal-conv1d.git
cd causal-conv1d
git checkout v1.2.0.post2
python -m pip install --no-build-isolation .

# then install mamba
cd ~/tmp
git clone https://github.com/state-spaces/mamba.git
cd mamba
git checkout v1.2.0
python -m pip install --no-build-isolation .

cd ~/TSB-Forecasting
```

