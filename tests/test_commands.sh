git config --global user.email "kondratyev.d.95@gmail.com"
git config --global user.name "Dmitry Kondratyev"
git config --global user.github "kondratyevd"

ls -l
pwd

source /cvmfs/cms.cern.ch/cmsset_default.sh
chmod +x setup.sh

./setup.sh -a https

cd CMSSW_13_3_0_pre4/src
cmsenv

cd /home/cmsusr
cmsRun run.py config="step2_cfg" maxEvents=10 sonic=False device="cpu"