mkdir clients
cd clients
wget -q https://github.com/triton-inference-server/server/releases/download/v2.42.0/v2.42.0_ubuntu2204.clients.tar.gz
tar xzf v2.42.0_ubuntu2204.clients.tar.gz

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-3 libb64-dev

cd ../
pwd
ls -l

clients/bin/perf_analyzer --model-repository=models --async -m deepmet -u localhost:8001 -p 1000 -b 100 --input-data "random"