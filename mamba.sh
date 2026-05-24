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
