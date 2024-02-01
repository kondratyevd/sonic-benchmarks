git config --global user.email "kondratyev.d.95@gmail.com"
git config --global user.name "Dmitry Kondratyev"
git config --global user.github "kondratyevd"
       
wget https://raw.githubusercontent.com/fastmachinelearning/sonic-workflows/CMSSW_13_3_X/setup.sh
chmod +x setup.sh
./setup.sh

cd CMSSW_13_3_0_pre4/src/sonic-workflows
cmsenv

cmsRun run.py maxEvents=10000 sonic=False device="cpu"