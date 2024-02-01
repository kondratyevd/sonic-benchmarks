git config --global user.email "kondratyev.d.95@gmail.com"
git config --global user.name "Dmitry Kondratyev"
git config --global user.github "kondratyevd"
       
sudo chmod +x setup.sh
./setup.sh -a https

cd CMSSW_13_3_0_pre4/src
cmsenv

cd /code/
cmsRun run.py config="tests/step2_cfg.py" maxEvents=10 sonic=False device="cpu"