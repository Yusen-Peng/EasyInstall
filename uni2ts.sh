cd ~/tmp
rm -rf uni2ts

# clone repo
git clone https://github.com/SalesforceAIResearch/uni2ts.git
cd uni2ts

git tag
git checkout 2.0.0

# install hatchling
python -m pip install hatchling

# install manually without build isolation or resolving dependencies
python -m pip install --no-build-isolation --no-deps .

cd ~/TSB-Forecasting
