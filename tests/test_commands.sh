git config --global user.email "kondratyev.d.95@gmail.com"
git config --global user.name "Dmitry Kondratyev"
git config --global user.github "kondratyevd"

sudo yum install openssl-devel

sudo chmod +x setup.sh
sudo mkdir cmssw
sudo chmod -R 777 cmssw
cd cmssw
../setup.sh -a https

cd CMSSW_13_3_0_pre4/src
cmsenv

cd /code/
ls -l
cmsRun run.py config="step2_cfg.py" maxEvents=10 sonic=False device="cpu"