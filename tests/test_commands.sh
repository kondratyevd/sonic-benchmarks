git config --global user.email "kondratyev.d.95@gmail.com"
git config --global user.name "Dmitry Kondratyev"
git config --global user.github "kondratyevd"

# sudo yum install -y openssl-devel
ls -l
pwd

which python
# yum install -y python3

source /cvmfs/cms.cern.ch/cmsset_default.sh
chmod +x setup.sh
# mkdir cmssw
# chmod -R 777 cmssw
# cd cmssw
./setup.sh -a https

cd CMSSW_13_3_0_pre4/src
cmsenv

cd /home/cmsusr
cmsRun run.py config="step2_cfg.py" maxEvents=10 sonic=False device="cpu"